Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWyqn-0001xu-Sd
 for barebox@lists.infradead.org; Tue, 19 Nov 2019 08:27:09 +0000
References: <20190819133847.17015-1-s.hauer@pengutronix.de>
 <20190819133847.17015-7-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <27e33ef9-bb89-dcd0-9829-6dd3036eeae9@pengutronix.de>
Date: Tue, 19 Nov 2019 09:26:58 +0100
MIME-Version: 1.0
In-Reply-To: <20190819133847.17015-7-s.hauer@pengutronix.de>
Content-Language: en-US
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
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>

Hello Sascha,

On 8/19/19 3:38 PM, Sascha Hauer wrote:
> +void dt_2nd_aarch64(void *fdt)
> +{
> +	unsigned long image_start = (unsigned long)_text + global_variable_offset();
> +
> +	arm_setup_stack(image_start);

Shouldn't we rather place the stack somewhere beyond the end of the barebox image
instead of assuming that we can access the memory before the start? 

I am asking because I am testing use of the generic ARM board as default
second stage image for the multi-image AT91s. The board specific entry point
generates only the PBL, which runs in SRAM to do DRAM setup and chainloads
the generic dt barebox from MMC to start of SDRAM and then calls it along
with the dtb.

It works so far and I like that I now can have the same second stage barebox
for all multi-image targets. (And one could even "falcon"-boot that way).
What do you think?


> +ENTRY_FUNCTION(start_dt_2nd, r0, r1, r2)
> +{
> +	unsigned long image_start = (unsigned long)_text + global_variable_offset();
> +
> +	arm_setup_stack(image_start);


Ditto.

Cheers
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
