Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZwXS-0002cZ-JU
 for barebox@lists.infradead.org; Wed, 27 Nov 2019 12:35:23 +0000
References: <20191127111613.24173-1-s.hauer@pengutronix.de>
 <20191127111613.24173-4-s.hauer@pengutronix.de>
 <153bbae3-b43b-558e-900f-462f2c60b2f8@pengutronix.de>
 <20191127123218.3dbjdf7xti5iqai2@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <dc54eff3-b20d-6c72-cb91-bfcc7661b9b4@pengutronix.de>
Date: Wed, 27 Nov 2019 13:35:21 +0100
MIME-Version: 1.0
In-Reply-To: <20191127123218.3dbjdf7xti5iqai2@pengutronix.de>
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
Subject: Re: [PATCH 3/4] of/gpio: Support gpio-line-names property
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello Sascha,

On 11/27/19 1:32 PM, Sascha Hauer wrote:
> barebox contains functions and commands to change and delete properties
> and nodes. We shouldn't store pointers into the live tree anywhere.

aren't these fixups done just before boot? What users change the live
device tree?

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
