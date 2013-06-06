Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f171.google.com ([209.85.217.171])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UkV1Z-0000Du-Kf
 for barebox@lists.infradead.org; Thu, 06 Jun 2013 07:54:22 +0000
Received: by mail-lb0-f171.google.com with SMTP id v5so2756238lbc.2
 for <barebox@lists.infradead.org>; Thu, 06 Jun 2013 00:53:54 -0700 (PDT)
Date: Thu, 6 Jun 2013 11:52:45 +0400
From: "antonynpavlov@gmail.com" <antonynpavlov@gmail.com>
Message-Id: <20130606115245.a8add6e7ee99b4354fd9df84@gmail.com>
In-Reply-To: <1370301232-12962-1-git-send-email-alex.aring@gmail.com>
References: <1370301232-12962-1-git-send-email-alex.aring@gmail.com>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH/RFC 0/5] Another try for a new memtest implementation
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

On Tue,  4 Jun 2013 01:13:47 +0200
Alexander Aring <alex.aring@gmail.com> wrote:

> Hi,
> =

> this is a new try to get a new memtest implementation into barebox.
> =


I have got the new memtest command from the next branch.

Here is my MIPS qemu-malta build log:

  CC      commands/memtest.o
commands/memtest.c: In function `alloc_memtest_region':
commands/memtest.c:39: warning: implicit declaration of function `xzalloc'
commands/memtest.c:39: warning: assignment makes pointer from integer witho=
ut a cast
commands/memtest.c:42: error: `EINVAL' undeclared (first use in this functi=
on)
commands/memtest.c:42: error: (Each undeclared identifier is reported only =
once
commands/memtest.c:42: error: for each function it appears in.)
commands/memtest.c: In function `request_memtest_regions':
commands/memtest.c:57: warning: implicit declaration of function `container=
_of'
commands/memtest.c:57: error: syntax error before "typeof"
commands/memtest.c:57: error: syntax error before "typeof"
commands/memtest.c:64: warning: implicit declaration of function `PAGE_ALIG=
N_DOWN'
commands/memtest.c:71: error: continue statement not within a loop
commands/memtest.c: At top level:
commands/memtest.c:79: error: syntax error before "for"
commands/memtest.c:79: error: syntax error before '->' token
commands/memtest.c:79: warning: type defaults to `int' in declaration of `p=
refetch'
commands/memtest.c:79: warning: function declaration isn't a prototype
commands/memtest.c:79: error: conflicting types for 'prefetch'
include/linux/list.h:18: error: previous definition of 'prefetch' was here
commands/memtest.c:79: warning: type defaults to `int' in declaration of `r'
commands/memtest.c:79: error: invalid type argument of `->'
commands/memtest.c:79: error: syntax error before "typeof"
commands/memtest.c:88: warning: type defaults to `int' in declaration of `e=
nd'
commands/memtest.c:88: error: invalid type argument of `->'
commands/memtest.c:88: error: initializer element is not constant
commands/memtest.c:88: warning: data definition has no type or storage class
commands/memtest.c:89: warning: type defaults to `int' in declaration of `s=
ize'
commands/memtest.c:89: error: `start' undeclared here (not in a function)
commands/memtest.c:89: warning: data definition has no type or storage class
commands/memtest.c:90: warning: type defaults to `int' in declaration of `r=
_prev'
commands/memtest.c:90: error: initializer element is not constant
commands/memtest.c:90: warning: data definition has no type or storage class
commands/memtest.c:91: error: syntax error before "if"
commands/memtest.c:94: warning: type defaults to `int' in declaration of `r=
et'
commands/memtest.c:94: error: `list' undeclared here (not in a function)
commands/memtest.c:94: error: initializer element is not constant
commands/memtest.c:94: warning: data definition has no type or storage class
commands/memtest.c:95: error: syntax error before "if"
commands/memtest.c:102: warning: type defaults to `int' in declaration of `=
start'
commands/memtest.c:102: warning: implicit declaration of function `PAGE_ALI=
GN'
commands/memtest.c:102: error: invalid type argument of `->'
commands/memtest.c:102: error: initializer element is not constant
commands/memtest.c:102: warning: data definition has no type or storage cla=
ss
commands/memtest.c:103: warning: type defaults to `int' in declaration of `=
end'
commands/memtest.c:103: error: redefinition of 'end'
commands/memtest.c:88: error: previous definition of 'end' was here
commands/memtest.c:103: error: invalid type argument of `->'
commands/memtest.c:103: error: initializer element is not constant
commands/memtest.c:103: warning: data definition has no type or storage cla=
ss
commands/memtest.c:104: warning: type defaults to `int' in declaration of `=
size'
commands/memtest.c:104: error: redefinition of 'size'
commands/memtest.c:89: error: previous definition of 'size' was here
commands/memtest.c:104: error: initializer element is not constant
commands/memtest.c:104: warning: data definition has no type or storage cla=
ss
commands/memtest.c:105: warning: type defaults to `int' in declaration of `=
r_prev'
commands/memtest.c:105: error: redefinition of 'r_prev'
commands/memtest.c:90: error: previous definition of 'r_prev' was here
commands/memtest.c:105: error: initializer element is not constant
commands/memtest.c:105: warning: data definition has no type or storage cla=
ss
commands/memtest.c:106: error: syntax error before "if"
commands/memtest.c:109: warning: type defaults to `int' in declaration of `=
ret'
commands/memtest.c:109: error: redefinition of 'ret'
commands/memtest.c:94: error: previous definition of 'ret' was here
commands/memtest.c:109: error: initializer element is not constant
commands/memtest.c:109: warning: data definition has no type or storage cla=
ss
commands/memtest.c:110: error: syntax error before "if"
commands/memtest.c:118: warning: type defaults to `int' in declaration of `=
end'
commands/memtest.c:118: error: redefinition of 'end'
commands/memtest.c:103: error: previous definition of 'end' was here
commands/memtest.c:118: error: redefinition of 'end'
commands/memtest.c:103: error: previous definition of 'end' was here
commands/memtest.c:118: error: `bank' undeclared here (not in a function)
commands/memtest.c:118: error: initializer element is not constant
commands/memtest.c:118: warning: data definition has no type or storage cla=
ss
commands/memtest.c:119: warning: type defaults to `int' in declaration of `=
size'
commands/memtest.c:119: error: redefinition of 'size'
commands/memtest.c:104: error: previous definition of 'size' was here
commands/memtest.c:119: error: redefinition of 'size'
commands/memtest.c:104: error: previous definition of 'size' was here
commands/memtest.c:119: error: initializer element is not constant
commands/memtest.c:119: warning: data definition has no type or storage cla=
ss
commands/memtest.c:120: error: syntax error before "if"
commands/memtest.c:123: warning: type defaults to `int' in declaration of `=
ret'
commands/memtest.c:123: error: redefinition of 'ret'
commands/memtest.c:109: error: previous definition of 'ret' was here
commands/memtest.c:123: error: redefinition of 'ret'
commands/memtest.c:109: error: previous definition of 'ret' was here
commands/memtest.c:123: error: initializer element is not constant
commands/memtest.c:123: warning: data definition has no type or storage cla=
ss
commands/memtest.c:124: error: syntax error before "if"
commands/memtest.c: In function `__do_memtest':
commands/memtest.c:139: error: syntax error before "typeof"
commands/memtest.c:139: error: syntax error before "typeof"
commands/memtest.c:149: warning: implicit declaration of function `printf'
commands/memtest.c: At top level:
commands/memtest.c:152: error: syntax error before "return"
commands/memtest.c: In function `do_memtest':
commands/memtest.c:165: warning: implicit declaration of function `simple_s=
trtoul'
commands/memtest.c:214: error: syntax error before "typeof"
commands/memtest.c:214: error: syntax error before "typeof"
commands/memtest.c:221: warning: implicit declaration of function `free'
commands/memtest.c: At top level:
commands/memtest.c:224: error: syntax error before "if"
commands/memtest.c:232: error: syntax error before string constant
commands/memtest.c:232: warning: type defaults to `int' in declaration of `=
printf'
commands/memtest.c:232: warning: function declaration isn't a prototype
commands/memtest.c:232: warning: data definition has no type or storage cla=
ss
make[1]: *** [commands/memtest.o] Error 1
make: *** [commands] Error 2


-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
