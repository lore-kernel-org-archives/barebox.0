Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PBkQo-0000mi-Dt
	for barebox@lists.infradead.org; Fri, 29 Oct 2010 08:35:27 +0000
Date: Fri, 29 Oct 2010 10:34:51 +0200
From: Baruch Siach <baruch@tkos.co.il>
Message-ID: <20101029083451.GB21232@tarshish>
References: <AANLkTimj3WiRQaeP+tQ7-AHy3WcVG0MKpwt5uNfo_cWf@mail.gmail.com>
	<AANLkTim9C1gxiGNj3gyso0aqcM_r1qxf0M3dDCWDmMMO@mail.gmail.com>
	<AANLkTikBmg33g-Uh=_fEtvkN6n6GZAi71Lc5tFm51yjJ@mail.gmail.com>
	<201010291904.16717.marc@cpdesign.com.au>
	<AANLkTikYV-vFVU-QF09yC-wzF5nSDmcy1rG0xz2WJLpj@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AANLkTikYV-vFVU-QF09yC-wzF5nSDmcy1rG0xz2WJLpj@mail.gmail.com>
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
Subject: Re: command bootu to start kernel
To: Belisko Marek <marek.belisko@gmail.com>
Cc: barebox@lists.infradead.org

Hi Belisko,

On Fri, Oct 29, 2010 at 10:20:46AM +0200, Belisko Marek wrote:
> I have 2.6.32 kernel but early_printk isn't available and I enable
> lowlevel debugging but
> don't get nothing else on console. Anyway thanks.

Try this patch to see the low level console output:

commit 5c31454464ed655401c31c68c895b16eafd2bde5
Author: Baruch Siach <baruch@tkos.co.il>
Date:   Mon Jan 19 10:41:47 2009 +0200

    arm, printk: the famous printascii() hack

diff --git a/kernel/printk.c b/kernel/printk.c
index 5052b54..d685f8a 100644
--- a/kernel/printk.c
+++ b/kernel/printk.c
@@ -685,6 +685,10 @@ asmlinkage int vprintk(const char *fmt, va_list args)
 	/* Emit the output into the temporary buffer */
 	printed_len += vscnprintf(printk_buf + printed_len,
 				  sizeof(printk_buf) - printed_len, fmt, args);
+	{
+		extern void printascii(const char *);
+		printascii(printk_buf);
+	}
 
 
 	/*

-- 
                                                     ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
