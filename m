Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TgWYh-000806-8X
 for barebox@lists.infradead.org; Thu, 06 Dec 2012 08:11:51 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Thu, 6 Dec 2012 09:09:10 +0100
References: <10036346.7roAWQEoPH@yiqingliang-pc>
In-Reply-To: <10036346.7roAWQEoPH@yiqingliang-pc>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201212060909.10852.jbe@pengutronix.de>
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
To: barebox@lists.infradead.org

Yi Qingliang wrote:
> the address of dm9000 is 0x28000000, it should be cs5, but in function
> "mini2440_devices_init", it set the cs4 instead, why??

Hmm, the schematics of the Mini2440 board tells me, the processor's GCS4 (ball 
D3) is in use for the DM9000.

GCS5 is connected to the CON5 instead.

Regards,
Juergen

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
