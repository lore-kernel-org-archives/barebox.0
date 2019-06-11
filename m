Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hagfn-0007KY-9l
 for barebox@lists.infradead.org; Tue, 11 Jun 2019 13:18:48 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=a3f-osx.local)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <a.fatoum@pengutronix.de>) id 1hagfi-0002jq-Af
 for barebox@lists.infradead.org; Tue, 11 Jun 2019 15:18:42 +0200
References: <20190611094319.9143-1-a.fatoum@pengutronix.de>
 <20190611094319.9143-4-a.fatoum@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <980fbe0c-1660-1dd8-3255-79452d2f29e4@pengutronix.de>
Date: Tue, 11 Jun 2019 15:18:41 +0200
MIME-Version: 1.0
In-Reply-To: <20190611094319.9143-4-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH v2 3/6] watchdog: add stm32 watchdog and reset driver
To: barebox@lists.infradead.org

On 11/6/19 11:43, Ahmad Fatoum wrote:

> +	ret = stm32_iwdg_set_timeout(wdd, wdd->timeout_max);
> +	if (ret) {
> +		dev_err(dev, "Failed to set initial watchdog timeout\n");
> +		return ret;
> +	}

Thinking about it some more after Ladislav's comment, I probably should
only do this if the watchdog is already active.

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
