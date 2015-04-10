Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YgbVc-0005hx-Vm
 for barebox@lists.infradead.org; Fri, 10 Apr 2015 16:10:21 +0000
Received: from kiwi.hi.pengutronix.de ([2001:67c:670:100:1d::c3] helo=kiwi)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <jlu@pengutronix.de>) id 1YgbVF-0000fS-Fj
 for barebox@lists.infradead.org; Fri, 10 Apr 2015 18:09:57 +0200
Received: from jlu by kiwi with local (Exim 4.84)
 (envelope-from <jlu@pengutronix.de>) id 1YgbVF-00074X-CQ
 for barebox@lists.infradead.org; Fri, 10 Apr 2015 18:09:57 +0200
Message-ID: <1428682197.7346.122.camel@pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Fri, 10 Apr 2015 18:09:57 +0200
In-Reply-To: <55278744.5040304@gmail.com>
References: <1428627714-17077-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1428627714-17077-4-git-send-email-sebastian.hesselbarth@gmail.com>
 <1428650609.2182.7.camel@lynxeye.de> <55278744.5040304@gmail.com>
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
Subject: Re: [PATCH 3/4] net: mvneta: Remove unnecessary DMA ops
To: barebox@lists.infradead.org

On Fr, 2015-04-10 at 10:18 +0200, Sebastian Hesselbarth wrote:
> However, I do agree that balancing the calls makes sense as long as we
> cannot guarantee that receive buffers are treated read-only and
> transmit buffers write-only.
> 
> So, the NACK is correct, please drop this patch.

Lucas,

do we need some barebox-specific documentation on how to use the DMA API
in network drivers (because RX buffers are not always read-only)? It
seems several people got confused the same way.

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
