Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZ962-0006XS-FA
 for barebox@lists.infradead.org; Mon, 25 Nov 2019 07:47:47 +0000
Date: Mon, 25 Nov 2019 08:47:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191125074744.wbtktsqljwsmmxvz@pengutronix.de>
References: <20190819133847.17015-1-s.hauer@pengutronix.de>
 <20190819133847.17015-7-s.hauer@pengutronix.de>
 <27e33ef9-bb89-dcd0-9829-6dd3036eeae9@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <27e33ef9-bb89-dcd0-9829-6dd3036eeae9@pengutronix.de>
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
Subject: Re: [PATCH 6/8] ARM: Add generic device tree 2nd stage support
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Nov 19, 2019 at 09:26:58AM +0100, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 8/19/19 3:38 PM, Sascha Hauer wrote:
> > +void dt_2nd_aarch64(void *fdt)
> > +{
> > +	unsigned long image_start = (unsigned long)_text + global_variable_offset();
> > +
> > +	arm_setup_stack(image_start);
> 
> Shouldn't we rather place the stack somewhere beyond the end of the barebox image
> instead of assuming that we can access the memory before the start?

Yes, this should be better. barebox is sometimes loaded directly to the
start of SDRAM.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
