Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YOYTC-0004Qu-Je
 for barebox@lists.infradead.org; Thu, 19 Feb 2015 21:17:15 +0000
Date: Thu, 19 Feb 2015 22:16:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150219211655.GE12209@pengutronix.de>
References: <29A2697B0516A946B1023D5E798DFCF67BACD7A2@mail-yang>
 <20150219200836.GB12209@pengutronix.de>
 <29A2697B0516A946B1023D5E798DFCF67BACD8E7@mail-yang>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <29A2697B0516A946B1023D5E798DFCF67BACD8E7@mail-yang>
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
Subject: Re: Specify where to save Barebox env
To: "Boulais, Marc-Andre" <maboulais@rheinmetall.ca>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Thu, Feb 19, 2015 at 08:32:54PM +0000, Boulais, Marc-Andre wrote:
> The system I am working on requires to boot from the SD card. However,
> the Linux application needs to have the ability to change boot
> parameters to set the location of the kernel and rootfs for the next
> boot. I was planning on making the Linux application use the
> bareboxenv-target tool to map the Barebox environment and then modify
> variables accordingly. 
> 
> From what I understand, this is possible when the environment is in
> NAND. Is it also true if the env. is on the SD card (barebox.env file)
> ? if so, how is it done ?

You have to mount the partition containing the environment before using
the bareboxenv tool.

BTW you to always store the environment on Nand you would have to
comment out the omap_env_init function.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
