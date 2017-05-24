Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dDQqf-0001XI-Ai
 for barebox@lists.infradead.org; Wed, 24 May 2017 07:36:51 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.84_2)
 (envelope-from <sha@pengutronix.de>) id 1dDQqJ-0003qn-Va
 for barebox@lists.infradead.org; Wed, 24 May 2017 09:36:27 +0200
Received: from sha by pty.hi.pengutronix.de with local (Exim 4.84_2)
 (envelope-from <sha@pengutronix.de>) id 1dDQqJ-0003tJ-KY
 for barebox@lists.infradead.org; Wed, 24 May 2017 09:36:27 +0200
Date: Wed, 24 May 2017 09:36:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170524073627.dqfb7v7td3utbcos@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: Stable branches resurrected
To: Barebox List <barebox@lists.infradead.org>

Hi All,

v2017.05.0 contains some nasty bugs. This led me to the idea to
resurrect the stable branches. I created stable/v2017.05 and also
released v2017.05.1. Please update to this one if you are using
v2017.05.0.

Experience shows that very few people semm to test the master branch,
but that I get bug reports relatively fast after a release. I'll try and
collect at least the bugfixes for the current release in a stable
branch. I'm not yet sure how long I maintain each stable branch though,
probably not too long to keep people motivated to update ;)

If you want to have a patch in a stable branch, please tell me so to
keep me reminded that we have these branches.

Thanks
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
