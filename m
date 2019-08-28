Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2wiU-0001vZ-9Q
 for barebox@lists.infradead.org; Wed, 28 Aug 2019 12:06:23 +0000
Received: from [2001:67c:670:100:6a05:caff:fe2d:a9b1]
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>) id 1i2wiR-0007zM-9b
 for barebox@lists.infradead.org; Wed, 28 Aug 2019 14:06:19 +0200
References: <20190827143239.15682-1-ahmad@a3f.at>
 <20190827143239.15682-6-ahmad@a3f.at>
 <20190828114915.zkz6tbf3k5i235eb@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <f4e3f5e6-007a-d1ff-5ba9-7b42266ad765@pengutronix.de>
Date: Wed, 28 Aug 2019 14:06:18 +0200
MIME-Version: 1.0
In-Reply-To: <20190828114915.zkz6tbf3k5i235eb@pengutronix.de>
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
Subject: Re: [PATCH 5/6] sandbox: hostfile: allow probing from device tree
To: barebox@lists.infradead.org

Hello Sascha,

On 8/28/19 1:49 PM, Sascha Hauer wrote:
> This file doesn't belong into this patch.

The file contains an example of how a barebox,hostfile node looks like.
Would you prefer I split if off into a separate patch?

Cheers
Ahmad

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
