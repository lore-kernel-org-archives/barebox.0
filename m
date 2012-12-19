Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TlQDa-00041n-H8
 for barebox@lists.infradead.org; Wed, 19 Dec 2012 20:26:19 +0000
Date: Wed, 19 Dec 2012 21:26:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121219202614.GF26326@pengutronix.de>
References: <1355435350-20348-1-git-send-email-s.hauer@pengutronix.de>
 <1355435350-20348-6-git-send-email-s.hauer@pengutronix.de>
 <87txrl7ww5.fsf@dell.be.48ers.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87txrl7ww5.fsf@dell.be.48ers.dk>
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
Subject: Re: [PATCH 5/7] ARM i.MX51: Add support for the Efika MX Smartbook
To: Peter Korsgaard <jacmet@sunsite.dk>
Cc: barebox@lists.infradead.org

Hi Peter,

On Mon, Dec 17, 2012 at 12:15:06PM +0100, Peter Korsgaard wrote:
>  Sascha> +        MX51_PAD_USBH1_DATA6__USBH1_DATA6,
>  Sascha> +        MX51_PAD_USBH1_DATA7__USBH1_DATA7,
>  Sascha> +	MX51_PAD_USBH1_STP__GPIO1_27,
>  Sascha> +	MX51_PAD_EIM_A16__GPIO2_10,
> 
> Tab/spaces mixup.
> 
> Any specific reason to list USB2 before USB1?

No, that's just a random order. I reordered them.

Also fixed the remaining comments.

Thanks for the feedback,

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
