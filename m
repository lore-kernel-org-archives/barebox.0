Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YXr13-0001UO-Oq
 for barebox@lists.infradead.org; Tue, 17 Mar 2015 12:54:38 +0000
Received: from kiwi.hi.pengutronix.de ([2001:67c:670:100:1d::c3] helo=kiwi)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jlu@pengutronix.de>) id 1YXr0h-00073z-Gj
 for barebox@lists.infradead.org; Tue, 17 Mar 2015 13:54:15 +0100
Received: from jlu by kiwi with local (Exim 4.84)
 (envelope-from <jlu@pengutronix.de>) id 1YXr0h-0002WO-Dj
 for barebox@lists.infradead.org; Tue, 17 Mar 2015 13:54:15 +0100
Message-ID: <1426596855.3330.175.camel@pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Tue, 17 Mar 2015 13:54:15 +0100
In-Reply-To: <20150317114923.GQ26127@ns203013.ovh.net>
References: <20150317114923.GQ26127@ns203013.ovh.net>
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
Subject: Re: [PATCH 0/9 v4] prepare for rsa support
To: barebox@lists.infradead.org

On Di, 2015-03-17 at 12:49 +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> 	The following patch series prepare for the adding of the rsa digest
> 	support
> 
> 	This will allow to verify a rsa signature of a file
> 
> 	Introduction of a new command digest to handle the digest and check
> 
> 	The next patch series will add RSA and keystore support

Thanks, this looks good to me now.

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
