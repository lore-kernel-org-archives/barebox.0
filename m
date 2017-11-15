Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eEvbN-00005e-7U
 for barebox@lists.infradead.org; Wed, 15 Nov 2017 11:11:32 +0000
Received: from erbse.hi.pengutronix.de ([2001:67c:670:100:9e5c:8eff:fece:cdfe])
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <bst@pengutronix.de>) id 1eEvax-0002mn-5l
 for barebox@lists.infradead.org; Wed, 15 Nov 2017 12:11:03 +0100
References: <20170816101644.20022-1-bst@pengutronix.de>
From: Bastian Stender <bst@pengutronix.de>
Message-ID: <31a8bead-d908-23a1-60d5-bb9ebfbc5c89@pengutronix.de>
Date: Wed, 15 Nov 2017 12:11:03 +0100
MIME-Version: 1.0
In-Reply-To: <20170816101644.20022-1-bst@pengutronix.de>
Content-Language: en-US
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
Subject: Re: [PATCH] i2c: mv64xxx: add timeout waiting for bus ready
To: barebox@lists.infradead.org

On 08/16/2017 12:16 PM, Bastian Stender wrote:
> This prevents barebox hanging e.g. in case the i2c clock is accidentally
> connected to GND.
> 
> Signed-off-by: Bastian Stender <bst@pengutronix.de>
> ---

Any thoughts on this one?

Regards,
Bastian

-- 
Pengutronix e.K.
Industrial Linux Solutions
http://www.pengutronix.de/
Peiner Str. 6-8, 31137 Hildesheim, Germany
Amtsgericht Hildesheim, HRA 2686

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
