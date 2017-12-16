
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | TRUE
    | THEN
    | SUCC
    | SEMICOLON
    | RPAREN
    | PRED
    | LPAREN
    | ISZERO
    | INTV of (
# 21 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithParser.mly"
       (int)
# 19 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithParser.ml"
  )
    | IF
    | FALSE
    | EOF
    | ELSE
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState24
  | MenhirState14
  | MenhirState12
  | MenhirState10
  | MenhirState8
  | MenhirState4
  | MenhirState3
  | MenhirState2
  | MenhirState0

# 6 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithParser.mly"
  
open Syntax

# 55 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithParser.ml"

let rec _menhir_goto_term : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_term -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv61 * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv57 * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FALSE ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState12
            | IF ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState12
            | INTV _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
            | ISZERO ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState12
            | LPAREN ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState12
            | PRED ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState12
            | SUCC ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState12
            | TRUE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState12
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState12) : 'freshtv58)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv59 * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)) : 'freshtv62)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv67 * _menhir_state) * _menhir_state * 'tv_term)) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ELSE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv63 * _menhir_state) * _menhir_state * 'tv_term)) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FALSE ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState14
            | IF ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState14
            | INTV _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
            | ISZERO ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState14
            | LPAREN ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState14
            | PRED ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState14
            | SUCC ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState14
            | TRUE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState14
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14) : 'freshtv64)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv65 * _menhir_state) * _menhir_state * 'tv_term)) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)) : 'freshtv68)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv71 * _menhir_state) * _menhir_state * 'tv_term)) * _menhir_state * 'tv_term)) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv69 * _menhir_state) * _menhir_state * 'tv_term)) * _menhir_state * 'tv_term)) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), _, (cond : 'tv_term)), _, (e1 : 'tv_term)), _, (e2 : 'tv_term)) = _menhir_stack in
        let _5 = () in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_term = 
# 58 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithParser.mly"
      ( TmIf (cond, e1, e2) )
# 151 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithParser.ml"
         in
        _menhir_goto_term _menhir_env _menhir_stack _menhir_s _v) : 'freshtv70)) : 'freshtv72)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv79 * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv75 * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv73 * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (t : 'tv_term)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_aTerm = 
# 73 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithParser.mly"
      ( t )
# 172 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithParser.ml"
             in
            _menhir_goto_aTerm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv74)) : 'freshtv76)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv77 * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)) : 'freshtv80)
    | MenhirState24 | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv87 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv85 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (t : 'tv_term)) = _menhir_stack in
        let _v : 'tv_command = 
# 52 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithParser.mly"
      ( Eval t )
# 191 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithParser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv83) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_command) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv81 * _menhir_state * 'tv_command) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | FALSE ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | IF ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | INTV _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
        | ISZERO ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | LPAREN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | PRED ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | SUCC ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | TRUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState24) : 'freshtv82)) : 'freshtv84)) : 'freshtv86)) : 'freshtv88)
    | _ ->
        _menhir_fail ()

and _menhir_goto_appTerm : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_appTerm -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv55) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_appTerm) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv53) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((a : 'tv_appTerm) : 'tv_appTerm) = _v in
    ((let _v : 'tv_term = 
# 56 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithParser.mly"
      ( a )
# 241 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithParser.ml"
     in
    _menhir_goto_term _menhir_env _menhir_stack _menhir_s _v) : 'freshtv54)) : 'freshtv56)

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_aTerm : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_aTerm -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv39 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_aTerm) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv37 * _menhir_state) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((t : 'tv_aTerm) : 'tv_aTerm) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_appTerm = 
# 66 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithParser.mly"
      ( TmPred t )
# 267 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithParser.ml"
         in
        _menhir_goto_appTerm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv38)) : 'freshtv40)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv43 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_aTerm) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv41 * _menhir_state) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((t : 'tv_aTerm) : 'tv_aTerm) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_appTerm = 
# 68 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithParser.mly"
      ( TmIsZero t )
# 284 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithParser.ml"
         in
        _menhir_goto_appTerm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv42)) : 'freshtv44)
    | MenhirState0 | MenhirState24 | MenhirState3 | MenhirState10 | MenhirState12 | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv47) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_aTerm) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv45) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((t : 'tv_aTerm) : 'tv_aTerm) = _v in
        ((let _v : 'tv_appTerm = 
# 62 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithParser.mly"
      ( t )
# 299 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithParser.ml"
         in
        _menhir_goto_appTerm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv46)) : 'freshtv48)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv51 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_aTerm) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv49 * _menhir_state) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((t : 'tv_aTerm) : 'tv_aTerm) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_appTerm = 
# 64 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithParser.mly"
      ( TmSucc t )
# 316 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithParser.ml"
         in
        _menhir_goto_appTerm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv50)) : 'freshtv52)

and _menhir_goto_toplevel : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 36 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithParser.mly"
      ( Syntax.command list)
# 323 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithParser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv31) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 36 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithParser.mly"
      ( Syntax.command list)
# 334 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithParser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv29) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : (
# 36 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithParser.mly"
      ( Syntax.command list)
# 342 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithParser.ml"
        )) : (
# 36 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithParser.mly"
      ( Syntax.command list)
# 346 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithParser.ml"
        )) = _v in
        (Obj.magic _1 : 'freshtv30)) : 'freshtv32)
    | MenhirState24 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv35 * _menhir_state * 'tv_command) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 36 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithParser.mly"
      ( Syntax.command list)
# 356 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithParser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv33 * _menhir_state * 'tv_command) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((cmds : (
# 36 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithParser.mly"
      ( Syntax.command list)
# 364 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithParser.ml"
        )) : (
# 36 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithParser.mly"
      ( Syntax.command list)
# 368 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithParser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s, (cmd : 'tv_command)) = _menhir_stack in
        let _v : (
# 36 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithParser.mly"
      ( Syntax.command list)
# 374 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithParser.ml"
        ) = 
# 47 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithParser.mly"
      ( cmd::cmds )
# 378 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithParser.ml"
         in
        _menhir_goto_toplevel _menhir_env _menhir_stack _menhir_s _v) : 'freshtv34)) : 'freshtv36)
    | _ ->
        _menhir_fail ()

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState24 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv11 * _menhir_state * 'tv_command) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv12)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv13 * _menhir_state) * _menhir_state * 'tv_term)) * _menhir_state * 'tv_term)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv14)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv15 * _menhir_state) * _menhir_state * 'tv_term)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv16)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv17 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv18)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv19 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv20)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv21 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv23 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv25 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv27) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv28)

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv9) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_aTerm = 
# 75 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithParser.mly"
      ( TmTrue )
# 442 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithParser.ml"
     in
    _menhir_goto_aTerm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv10)

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | INTV _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
    | LPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState2

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | INTV _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
    | LPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState4

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | IF ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | INTV _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
    | ISZERO ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | LPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | PRED ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | SUCC ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState3

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | INTV _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
    | LPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState8

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 21 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithParser.mly"
       (int)
# 533 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithParser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv7) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((number : (
# 21 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithParser.mly"
       (int)
# 543 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithParser.ml"
    )) : (
# 21 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithParser.mly"
       (int)
# 547 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithParser.ml"
    )) = _v in
    ((let _v : 'tv_aTerm = 
# 79 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithParser.mly"
      ( let rec toPeanoNatural n =
        match n with
        | 0 -> TmZero
        | n -> TmSucc(toPeanoNatural (n-1))
        in toPeanoNatural number
      )
# 557 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithParser.ml"
     in
    _menhir_goto_aTerm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv8)

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | IF ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | INTV _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | ISZERO ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | LPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | PRED ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | SUCC ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv5) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_aTerm = 
# 77 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithParser.mly"
      ( TmFalse )
# 598 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithParser.ml"
     in
    _menhir_goto_aTerm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv6)

and _menhir_run21 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 36 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithParser.mly"
      ( Syntax.command list)
# 611 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithParser.ml"
    ) = 
# 45 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithParser.mly"
      ( [] )
# 615 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithParser.ml"
     in
    _menhir_goto_toplevel _menhir_env _menhir_stack _menhir_s _v) : 'freshtv4)

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and toplevel : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 36 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithParser.mly"
      ( Syntax.command list)
# 634 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithParser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env =
      let (lexer : Lexing.lexbuf -> token) = lexer in
      let (lexbuf : Lexing.lexbuf) = lexbuf in
      ((let _tok = Obj.magic () in
      {
        _menhir_lexer = lexer;
        _menhir_lexbuf = lexbuf;
        _menhir_token = _tok;
        _menhir_error = false;
      }) : _menhir_env)
    in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EOF ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FALSE ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | IF ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | INTV _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | ISZERO ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | PRED ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | SUCC ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv2))

# 219 "/home/juan/.opam/4.05.0/lib/menhir/standard.mly"
  


# 680 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithParser.ml"
