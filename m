Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNJq8-0006ur-1b
 for barebox@lists.infradead.org; Wed, 23 Oct 2019 16:50:29 +0000
Received: from [2001:67c:670:100:6a05:caff:fe2d:a9b1]
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>) id 1iNJq6-0003WK-In
 for barebox@lists.infradead.org; Wed, 23 Oct 2019 18:50:26 +0200
References: <20191023162259.21895-1-o.rempel@pengutronix.de>
 <48ad5316-9817-f4d3-680d-e4ee173d774d@pengutronix.de>
 <4a1b5482-ca22-7e79-dcd9-b988b6a70644@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <24196965-a840-f338-c429-dbcdae319e51@pengutronix.de>
Date: Wed, 23 Oct 2019 18:50:26 +0200
MIME-Version: 1.0
In-Reply-To: <4a1b5482-ca22-7e79-dcd9-b988b6a70644@pengutronix.de>
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
Subject: Re: [PATCH v5 1/2] Documentation: add watchdog documentation
To: barebox@lists.infradead.org

On 10/23/19 6:45 PM, Ahmad Fatoum wrote:
> On a system with multiple watchdogs, the highest priority watchdog is the one
> affected by the ``boot.watchdog_timeout`` parameter. If multiple watchdogs
> share the same priority, only one will be started.

Oh still not correct, but wait now I got it:

On a system with multiple watchdogs, the watchdog with the highest positive
priority is the one affected by the ``boot.watchdog_timeout`` parameter.
If multiple watchdogs share the same priority, only one will be started.

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
