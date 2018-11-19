Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gOex2-0007cG-Dz
 for barebox@lists.infradead.org; Mon, 19 Nov 2018 08:30:38 +0000
References: <20181116143127.13875-1-s.hauer@pengutronix.de>
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
In-reply-to: <20181116143127.13875-1-s.hauer@pengutronix.de>
Date: Mon, 19 Nov 2018 09:30:21 +0100
Message-ID: <73wop95v1e.fsf@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM: socfpga: generate smaller images when multiple
 boards are selected
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>


Sascha Hauer <s.hauer@pengutronix.de> writes:

> The socfpga xload images are limited to 64KiB. This doesn't fit 
> if
> multiple boards are selected. The reason is that we include huge
> C files and arrays in the early init code which get compiled 
> once
> for each board. -ffunction-sections is without effect here since 
> all
> functions have the same name and hence we get the same function
> multiple times in the same section.
>
> To overcome this we surround all function names with a SECT() 
> macro which
> is used to add a board specific prefix to the section names. 
> This way
> -ffunction-sections can now do its work and discard unused 
> functions.
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

\o/

Tested-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>


Thanks,
Steffen

-- 
Pengutronix e.K.                          | Steffen Trumtrar 
|
Industrial Linux Solutions                | 
http://www.pengutronix.de/ |
Peiner Str. 6-8, 31137 Hildesheim, Germany| Phone: 
+49-5121-206917-0   |
Amtsgericht Hildesheim, HRA 2686          | Fax: 
+49-5121-206917-5555|

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
