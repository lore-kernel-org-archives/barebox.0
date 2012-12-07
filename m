Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pb0-f49.google.com ([209.85.160.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TgqEW-00010b-BS
 for barebox@lists.infradead.org; Fri, 07 Dec 2012 05:12:21 +0000
Received: by mail-pb0-f49.google.com with SMTP id un15so92295pbc.36
 for <barebox@lists.infradead.org>; Thu, 06 Dec 2012 21:12:18 -0800 (PST)
From: Yi Qingliang <niqingliang2003@gmail.com>
Date: Fri, 07 Dec 2012 13:10:57 +0000
Message-ID: <3052285.ENgbPHB0bd@yiqingliang-pc>
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

and if connected jtager, the ON switch does not work some time.

of cause the jtagger is connected to PC, but I have not use it with 'openocd'.

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
