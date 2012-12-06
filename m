Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-f49.google.com ([209.85.220.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TgWmN-00007c-Le
 for barebox@lists.infradead.org; Thu, 06 Dec 2012 08:26:00 +0000
Received: by mail-pa0-f49.google.com with SMTP id bi1so3791574pad.36
 for <barebox@lists.infradead.org>; Thu, 06 Dec 2012 00:25:58 -0800 (PST)
From: Yi Qingliang <niqingliang2003@gmail.com>
Date: Thu, 06 Dec 2012 16:24:39 +0000
Message-ID: <8798196.eT9tp0tzHY@yiqingliang-pc>
In-Reply-To: <201212060909.10852.jbe@pengutronix.de>
References: <10036346.7roAWQEoPH@yiqingliang-pc>
 <201212060909.10852.jbe@pengutronix.de>
MIME-Version: 1.0
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
Subject: Re: about the dm9000 in mini2440
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

indeed, I encountered follow error when boot barebox (compiled with default 
cfg):
dm9000@dm90000: Wrong databus width defined at compile time

and can't use it for tftp

I have printed out the context, found that is 32bit in the dm9000 register 
(read only), but in mini2440 initialize code is 16bit.

any suggestion?


On Thursday, December 06, 2012 09:09:10 AM Juergen Beisert wrote:
> Yi Qingliang wrote:
> > the address of dm9000 is 0x28000000, it should be cs5, but in function
> > "mini2440_devices_init", it set the cs4 instead, why??
> 
> Hmm, the schematics of the Mini2440 board tells me, the processor's GCS4
> (ball D3) is in use for the DM9000.
> 
> GCS5 is connected to the CON5 instead.
> 
> Regards,
> Juergen

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
