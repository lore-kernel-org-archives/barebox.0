Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YRJfQ-0000AH-Ey
 for barebox@lists.infradead.org; Fri, 27 Feb 2015 12:05:18 +0000
Received: from kiwi.hi.pengutronix.de ([2001:67c:670:100:1d::c3] helo=kiwi)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jlu@pengutronix.de>) id 1YRJf3-0000j9-9m
 for barebox@lists.infradead.org; Fri, 27 Feb 2015 13:04:53 +0100
Received: from jlu by kiwi with local (Exim 4.84)
 (envelope-from <jlu@pengutronix.de>) id 1YRJf3-0004Hn-3j
 for barebox@lists.infradead.org; Fri, 27 Feb 2015 13:04:53 +0100
Message-ID: <1425038693.3668.5.camel@pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Fri, 27 Feb 2015 13:04:53 +0100
In-Reply-To: <1424973945-8008-2-git-send-email-s.hauer@pengutronix.de>
References: <1424973945-8008-1-git-send-email-s.hauer@pengutronix.de>
 <1424973945-8008-2-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 1/2] ARM: Allow to mask data aborts
To: barebox@lists.infradead.org

On Do, 2015-02-26 at 19:05 +0100, Sascha Hauer wrote:
> +int data_abort_unmask(void)
> +{
> +       arm_ignore_data_abort = 0;
> +
> +       return arm_data_abort_occured;
> +}

arm_data_abort_occured is set to &arm_data_abort_occured when an abort
occurs. Should we return arm_data_abort_occured != 0?

Also occured is actually spelled occurred.

Thanks,
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
