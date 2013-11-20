Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo3.mail-out.ovh.net ([178.33.47.94]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vj6yl-0005w1-PA
 for barebox@lists.infradead.org; Wed, 20 Nov 2013 12:34:00 +0000
Received: from mail438.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id A5078FF89E6
 for <barebox@lists.infradead.org>; Wed, 20 Nov 2013 13:23:42 +0100 (CET)
Date: Wed, 20 Nov 2013 13:26:03 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20131120122603.GD7965@ns203013.ovh.net>
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
Subject: [PATCH 0/2] fix net console support
To: barebox@lists.infradead.org

Hi,

	since 

	commit e62d4255172540805a77fee1c58382103f43bb2f
	Author: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
	Date:   Fri Sep 20 05:31:29 2013 +0200

	console: drop f_caps and check the function pointer getc/putc instead

	the net console is broken as the driver was using the f_caps to
	specify when the drvier can enable or not.

	Instead of tweking the API provide is_ready callback for this

The following changes since commit 7c1091bd5895204b109c5a79996aa9367692a78a:

  of: fdt: reorder fdt_header initialization (2013-11-08 15:42:55 +0100)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/net_console

for you to fetch changes up to 18f198052d242f9ca388e6ce50fe448e08cdbdd8:

  net: netconsole: add is_ready support (2013-11-20 20:21:58 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (2):
      console: add is_ready callbback support
      net: netconsole: add is_ready support

 common/console.c  | 3 +++
 include/console.h | 1 +
 net/netconsole.c  | 9 +++++++++
 3 files changed, 13 insertions(+)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
