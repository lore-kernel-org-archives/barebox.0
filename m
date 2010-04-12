Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1O1Gln-0005G9-Mc
	for barebox@lists.infradead.org; Mon, 12 Apr 2010 10:21:33 +0000
Date: Mon, 12 Apr 2010 12:19:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100412101924.GU3688@pengutronix.de>
References: <201004121422.45667.marc@cpdesign.com.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201004121422.45667.marc@cpdesign.com.au>
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
Subject: Re: mx35 3stack LCD power enable
To: Marc Reilly <marc@cpdesign.com.au>
Cc: barebox@lists.infradead.org

Hi Marc,

On Mon, Apr 12, 2010 at 02:22:45PM +1000, Marc Reilly wrote:
> Hi,
> 
> These patches enable power to the mx35 3stack LCD.

Thanks for working on this. All applied.

> 
> (First time -so please pardon any transgressions of patching etiquette.)

As you are using git please consider sending patches with git
send-email next time. It sends patches inline and one mail per patch.
This helps a lot in reviewing and applying the patches.

> 
> It'd be nice for someone to double check what I've done in 
> f3s_pmic_init_all(). I'm not sure what the original author was intending to 
> turn on/off and whether these patches break that. I've preserved the bit 
> banging of the physical lines themselves under the assumption that whatever it 
> was doing before was the correct/intended behavior.

Looks good, though I haven't tested it yet.

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
