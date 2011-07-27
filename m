Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ew0-f49.google.com ([209.85.215.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qm0kt-0003uz-DS
	for barebox@lists.infradead.org; Wed, 27 Jul 2011 09:50:20 +0000
Received: by ewy3 with SMTP id 3so1531519ewy.36
	for <barebox@lists.infradead.org>; Wed, 27 Jul 2011 02:50:17 -0700 (PDT)
Message-ID: <4E2FDF54.6000804@googlemail.com>
Date: Wed, 27 Jul 2011 11:50:12 +0200
From: Andre Naujoks <nautsch2@googlemail.com>
MIME-Version: 1.0
References: <4E2EC796.7070408@googlemail.com> <4E2ECD3A.1060509@pengutronix.de>
	<4E2FB2D8.4000306@googlemail.com>
In-Reply-To: <4E2FB2D8.4000306@googlemail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: barebox compilation with gcc 4.5.2 and ptxdist
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org

Am 27.07.2011 08:40, schrieb Andre Naujoks:
> Am 26.07.2011 16:20, schrieb Marc Kleine-Budde:
>> On 07/26/2011 03:56 PM, Andre Naujoks wrote:
>>> Hello.
>>>
>>> We are currently trying to compile a barebox with the git version of
>>> ptxdist and the git version of the OSELAS generic Toolchain for powerpc.
>>>
>>> Also the current 2011.07.0 release of barebox.
>>>
>>> We are having some problems during the build, which I think are a result
>>> of some changes in gcc's optimizations (since 4.4.something). GCC uses
>>> some functions on the ppc platform to optimze the size of the resulting
>>> binary, which are only present in the libgcc.a.
>>>
>>> The compile stage works fine up tp the last linker step:
>>>
>>>   CC      arch/ppc/lib/time.o
>>>   AS      arch/ppc/lib/misc.o
>>>   CC      arch/ppc/lib/ppclinux.o
>>>   CC      arch/ppc/lib/board_data.o
>>>   LD      arch/ppc/lib/built-in.o
>>>   LD      barebox
>>> common/built-in.o: In function `mapset':
>>> hush.c:(.text.mapset+0x44): undefined reference to `_restgpr_30_x'
>>> common/built-in.o: In function `syntax_err':
>>> hush.c:(.text.syntax_err+0x34): undefined reference to `_restgpr_30_x'
>>> common/built-in.o: In function `done_command':
>>> hush.c:(.text.done_command+0x94): undefined reference to `_restgpr_29_x'
>>> common/built-in.o: In function `done_pipe':
>>> hush.c:(.text.done_pipe+0x5c): undefined reference to `_restgpr_29_x'
>>> common/built-in.o: In function `is_assignment':
>>> hush.c:(.text.is_assignment+0x8c): undefined reference to `_restgpr_27_x'
>>> common/built-in.o: In function `b_addchr':
>>> hush.c:(.text.b_addchr+0x8c): undefined reference to `_restgpr_28_x'
>>> common/built-in.o: In function `b_addqchr':
>>> hush.c:(.text.b_addqchr+0x78): undefined reference to `_restgpr_29_x'
>>> ...
>>>
>>>
>>> This goes on for a few pages.
>>>
>>> As far as I can see, the possibilities I have here, is to either
>>> integrate the missing functions out of the gcc sources into barebox, or
>>> make barebox link with libgcc, which seems surprisingly difficult, due
>>> to the unfamiliar (to me) build process. A simple LDFLAGS_barebox+=-l..
>>> -L.. did not help here.
>>>
>>> Am I right with this assumption, or am I missing something else here?
>>
>> We don't want to link barebox against libgcc, that's bad style. I
>> suggest to port arch/powerpc/lib/crtsavres.S from the linux kernel to
>> barebox.
> 
> Thanks. I will give this a shot and see how far I get. If it works I
> will come back with a patch.

Hi.

With a little help from a collegue, we came up with the patches in the
followong mails. Basically the kernel files without the 64 bit parts.

The second patch was another part of libgcc, which seemed to fit best in
the misc.S file, which was already present.

Regards
  Andre

> 
>>
>> cheers, Marc
>>
> 
> Regards
>   Andre


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
