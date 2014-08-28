Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x22c.google.com ([2a00:1450:400c:c00::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XMvBL-0007xo-Ch
 for barebox@lists.infradead.org; Thu, 28 Aug 2014 08:35:48 +0000
Received: by mail-wg0-f44.google.com with SMTP id m15so402454wgh.27
 for <barebox@lists.infradead.org>; Thu, 28 Aug 2014 01:35:23 -0700 (PDT)
Date: Thu, 28 Aug 2014 10:35:16 +0200
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140828083514.GA4555@omega>
References: <1409212205.4914.6.camel@lws-gamez.phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1409212205.4914.6.camel@lws-gamez.phytec.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [BUG] readline history
To: Teresa Gamez <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

On Thu, Aug 28, 2014 at 09:50:05AM +0200, Teresa Gamez wrote:
> Hello Sascha,
> 
> I noticed a bug on the latest master.
> When no history is present and I hit the arrow up key, I get:
> 
> unable to handle NULL pointer dereference at address 0x00000001
> pc : [<9fe243ba>]    lr : [<9fe268cf>]
> sp : 9ffff9d0  ip : 00000016  fp : 00000002
> r10: 00000001  r9 : 9fe549dc  r8 : 9fe65d08
> r7 : 00000400  r6 : 00000001  r5 : 00000000  r4 : 9fe66258
> r3 : 00000000  r2 : 00000000  r1 : 00000001  r0 : 9fe66258
> Flags: nZCv  IRQs off  FIQs on  Mode SVC_32
> [<9fe243ba>] (strcpy+0xa/0xe) from [<9fe268cf>] (readline+0x363/0x4e0)
> [<9fe268cf>] (readline+0x363/0x4e0) from [<9fe05469>] (file_get
> +0x49/0x110)
> 
> I could bisect it to this commit:
> 
> 
> ada160a34a1ec8421d5bb7b9dd746294668a5130 is the first bad commit
> commit ada160a34a1ec8421d5bb7b9dd746294668a5130
> Author: Sascha Hauer <s.hauer@pengutronix.de>
> Date:   Tue Jul 29 11:54:26 2014 +0200
> 
>     readline: reimplement history functions
>     
> ...

#0  0x000000000040db2d in strcpy (dest=0x631a41 <console_buffer+1> "A", dest@entry=0x631a40 <console_buffer> "[A", 
    src=0x2 <error: Cannot access memory at address 0x2>, src@entry=0x1 <error: Cannot access memory at address 0x1>)
    at lib/string.c:95
#1  0x0000000000413275 in readline (prompt=0x631080 <prompt> "\033[1;32mbarebox@\033[1;36mbarebox sandbox:/\033[0m ", 
    buf=buf@entry=0x631a40 <console_buffer> "[A", len=len@entry=1024) at lib/readline.c:312
#2  0x00000000004064e5 in get_user_input (i=0x7fffffffe3d0) at common/hush.c:449
#3  file_get (i=0x7fffffffe3d0) at common/hush.c:499
#4  0x00000000004069b0 in parse_stream (dest=dest@entry=0x7fffffffe368, ctx=ctx@entry=0x7fffffffe3f0, 
    input=input@entry=0x7fffffffe3d0, end_trigger=end_trigger@entry=10) at common/hush.c:1492
#5  0x0000000000406ed3 in parse_stream_outer (ctx=ctx@entry=0x7fffffffe3f0, inp=inp@entry=0x7fffffffe3d0, flag=flag@entry=2)
    at common/hush.c:1693
#6  0x0000000000407c4b in run_shell () at common/hush.c:1919
#7  0x0000000000402154 in start_barebox () at common/startup.c:113
#8  0x000000000041c9ad in main ()

my backtrace on sandbox system.



Seems there is more broken than this one:

Type:
 1. foobar
 2. <enter>
 3. <key_up>
 4. <key_down>
 5. <backspace>

#0  memmove (dest=0x631a45 <console_buffer+5>, src=0x631a46 <console_buffer+6>, count=4294818367, 
    count@entry=4294967290) at lib/string.c:522
#1  0x00000000004130d0 in readline (prompt=0x631080 <prompt> "\033[1;32mbarebox@\033[1;36mbarebox sandbox:/\033[0m ", 
    buf=buf@entry=0x631a40 <console_buffer> "", len=len@entry=1024) at lib/readline.c:279
#2  0x00000000004064e5 in get_user_input (i=0x7fffffffe3d0) at common/hush.c:449
#3  file_get (i=0x7fffffffe3d0) at common/hush.c:499
#4  0x00000000004069b0 in parse_stream (dest=dest@entry=0x7fffffffe368, ctx=ctx@entry=0x7fffffffe3f0, 
    input=input@entry=0x7fffffffe3d0, end_trigger=end_trigger@entry=10) at common/hush.c:1492
#5  0x0000000000406ed3 in parse_stream_outer (ctx=ctx@entry=0x7fffffffe3f0, inp=inp@entry=0x7fffffffe3d0, 
    flag=flag@entry=2) at common/hush.c:1693
#6  0x0000000000407c4b in run_shell () at common/hush.c:1919
#7  0x0000000000402154 in start_barebox () at common/startup.c:113
#8  0x000000000041c93b in main ()


It seems there is somewhere a dangling pointer and whith keydown I hit
the same line like the first issue.

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
