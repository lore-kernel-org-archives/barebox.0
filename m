Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YT5mf-000589-HY
 for barebox@lists.infradead.org; Wed, 04 Mar 2015 09:40:06 +0000
Received: from kiwi.hi.pengutronix.de ([2001:67c:670:100:1d::c3] helo=kiwi)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jlu@pengutronix.de>) id 1YT5mJ-0005PJ-8d
 for barebox@lists.infradead.org; Wed, 04 Mar 2015 10:39:43 +0100
Received: from jlu by kiwi with local (Exim 4.84)
 (envelope-from <jlu@pengutronix.de>) id 1YT5mJ-0000JC-64
 for barebox@lists.infradead.org; Wed, 04 Mar 2015 10:39:43 +0100
Message-ID: <1425461983.3668.201.camel@pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Wed, 04 Mar 2015 10:39:43 +0100
In-Reply-To: <1425461372-31740-1-git-send-email-jlu@pengutronix.de>
References: <1425461372-31740-1-git-send-email-jlu@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH 0/4] Device Tree Overlay Support
To: barebox@lists.infradead.org

On Mi, 2015-03-04 at 10:29 +0100, Jan Luebbe wrote:
> This adds support for device tree overlays as supported by Linux 4.0-rc1.
> Patches 2-4 update the included DTC with overlay support.

Sorry, I forgot to mention that this depends on Marc's sandbox-of
series.

Regards,
Jan
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
