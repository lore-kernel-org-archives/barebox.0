Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fETfg-0007GV-Ua
 for barebox@lists.infradead.org; Fri, 04 May 2018 05:54:22 +0000
Date: Fri, 4 May 2018 07:54:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180504055408.lnzhtx6tozemob4p@pengutronix.de>
References: <20180429130907.20506-1-linux@rempel-privat.de>
 <20180429130907.20506-4-linux@rempel-privat.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180429130907.20506-4-linux@rempel-privat.de>
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
Subject: Re: [RFC PATCH 3/7] bootm: add kexec ELF support
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org

On Sun, Apr 29, 2018 at 03:09:03PM +0200, Oleksij Rempel wrote:
> +static int do_bootm_elf(struct image_data *data)
> +{
> +	kexec_load_bootm_data(data);
> +
> +	reboot(LINUX_REBOOT_CMD_KEXEC, data);
> +
> +	return -ERESTARTSYS;
> +}
> +

I can't really judge this series. This is the only thing I stumbled
upon: I see no reason to name the architecture specific kexec function
'reboot'. I would expect some kexec specific name, like arch_kexec or
similar.

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
