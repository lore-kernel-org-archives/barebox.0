Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qn8KL-0003QG-2x
	for barebox@lists.infradead.org; Sat, 30 Jul 2011 12:07:33 +0000
Received: by wwf22 with SMTP id 22so3015816wwf.18
	for <barebox@lists.infradead.org>; Sat, 30 Jul 2011 05:07:30 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1312004257-7009-1-git-send-email-plagnioj@jcrosoft.com>
References: <1312004257-7009-1-git-send-email-plagnioj@jcrosoft.com>
Date: Sat, 30 Jul 2011 16:07:30 +0400
Message-ID: <CAA4bVAHVAbNCHcXY7_3Pp1hHZNRdh7rv7p5AHs7V4yUUnaP6+w@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] ns16550: switch to resource
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On 30/07/2011, Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> wrote:

> +static uint32_t ns16550_read(struct console_device *cdev, uint32_t off)
> +{
> +	struct device_d *dev = cdev->dev;
> +	struct NS16550_plat *plat = (struct NS16550_plat *)dev->platform_data;
> +	int width = dev->resource[0].flags & IORESOURCE_MEM_TYPE_MASK;
> +	
> +	off <<= plat->shift;
> +
> +	if (plat->reg_read)
> +		return plat->reg_read((unsigned long)dev->priv, off);
>

So, this code __always__ make swap before calling platform-dependent
reg_read (if any).
And platform-dependent reg_read must assume the presence of the shift.

I propose this variant:
---------------------------
if (plat->reg_read)
	return plat->reg_read((unsigned long)dev->priv, off);

off <<= plat->shift;
---------------------------

> +static void ns16550_write(struct console_device *cdev, uint32_t val,
> +			  uint32_t off)
> +{
> +	struct device_d *dev = cdev->dev;
> +	struct NS16550_plat *plat = (struct NS16550_plat *)dev->platform_data;
> +	int width = dev->resource[0].flags & IORESOURCE_MEM_TYPE_MASK;
> +
> +	off <<= plat->shift;
> +
> +	if (plat->reg_write) {
> +		plat->reg_write(val, (unsigned long)dev->priv, off);
> +		return;
> +	}

Near the same code.

-- 
Best regards,
  Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
