Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WkCyo-00027B-5V
 for barebox@lists.infradead.org; Tue, 13 May 2014 13:42:50 +0000
Received: from ptx.hi.pengutronix.de ([2001:6f8:1178:2:5054:ff:fec0:8e10]
 ident=Debian-exim) by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1WkCyN-0004QW-DB
 for barebox@lists.infradead.org; Tue, 13 May 2014 15:42:23 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1WkCyS-00006P-SV
 for barebox@lists.infradead.org; Tue, 13 May 2014 15:42:28 +0200
Date: Tue, 13 May 2014 15:42:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140513134228.GQ5858@pengutronix.de>
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
Subject: barebox Documentation
To: barebox@lists.infradead.org

Hi,

As we all know the barebox documentation sucks. We @Pengutronix will
have our internal techweek next month. One of the goals will be to
improve the documentation situation for barebox.

What are your opinions in which form the documentation should be?

We currently have plain text files under Documentation/, a wiki on
http://wiki.barebox.org/doku.php and doxygen. None of the documentation
sets is complete and all are outdated.

Some pros and cons of the existing approaches are:

Plain text files
+ Easy to write
+ no extra step to generate docs, wysiwyg ;)
- no links
- no pictures

Wiki
- not contained in the repository, so may be out of sync
+ links
+ nice markup language

doxygen
+ contained in the repository
+ easy html doc generation
+ links
- extra step to generate the docs

So what are your opinions, what should be updated and what should be
dropped? Kconfig has an extra role here. It cannot provide a full
documentation, but should be updated and maintained.

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
