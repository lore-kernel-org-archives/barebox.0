Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout01.posteo.de ([185.67.36.65])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gG33h-0002hl-RD
 for barebox@lists.infradead.org; Fri, 26 Oct 2018 14:25:55 +0000
Received: from submission (posteo.de [89.146.220.130]) 
 by mout01.posteo.de (Postfix) with ESMTPS id 18B7321338
 for <barebox@lists.infradead.org>; Fri, 26 Oct 2018 16:25:27 +0200 (CEST)
Date: Fri, 26 Oct 2018 16:25:25 +0200
From: Patrick Boettcher <patrick.boettcher@posteo.de>
Message-ID: <20181026162525.1c7685bd@yaise-pc1>
In-Reply-To: <20181026112438.i4gq2p4q7v4ca6es@pengutronix.de>
References: <20181026120558.1ef80a86@yaise-pc1>
 <20181026102342.lhx6hpcnobqe2g4k@pengutronix.de>
 <20181026123807.3f980f28@yaise-pc1>
 <20181026112438.i4gq2p4q7v4ca6es@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: IMX6UL: Booting kernel with initramfs blocks
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Mikael Pann <Mikael.pann@stimio.fr>

On Fri, 26 Oct 2018 13:24:38 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:
> >   Starting kernel at 0x888e1000, oftree at 0x8a542000...
> 
> From what I can see these addresses look fine. You have an image
> that's 28MiB in size, we put it to roughly 5x size into memory and the
> devicetree behind it. The kernel should then unpack itself to the
> start of SDRAM. Looks good and It seems barebox actually jumps to the
> Kernel.
> 
> Next thing to try would be enabling CONFIG_DEBUG_LL,
> CONFIG_DEBUG_UNCOMPRESS and CONFIG_EARLY_PRINTK in the Kernel. Pass
> "earlyprintk" as kernel option and let's see what happens then.

(earlyprintk yet to be tried)

We made a step forward: Reducing the size of the image (from 28 down to
17 MiB) makes it boot correctly.

Not sure where the limitation can come from, if you have an idea.

Thanks again for the help so far, I will post a follow-up if the
root-cause is discovered.

--
Patrick.


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
