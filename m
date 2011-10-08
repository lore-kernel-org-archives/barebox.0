Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo2.mail-out.ovh.net ([46.105.58.226]
	helo=mo2.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1RCY5T-0001OW-VN
	for barebox@lists.infradead.org; Sat, 08 Oct 2011 14:41:16 +0000
Received: from mail180.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo2.mail-out.ovh.net (Postfix) with SMTP id E5CE1DD2328
	for <barebox@lists.infradead.org>;
	Sat,  8 Oct 2011 16:43:02 +0200 (CEST)
Date: Sat, 8 Oct 2011 16:17:22 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20111008141722.GG10459@game.jcrosoft.org>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/5] Multi uImage support on ARM
To: barebox@lists.infradead.org

Hi,

	This the final patch seires to add the Multi uImage support to
	barebox

	This does not support yet the script type but allow us to boot a uImage
	with a kernel and an initrd inside

	It will be easy to add the DT support too

	And enable it on arm.

Jean-Christophe PLAGNIOL-VILLARD (5):
      bootm: ensure the uImage is mapped first to allow option to used it
      get_fake_image_handle: set nb_data_entries to 1 and update the header size
      bootm: add -L option to specify the initrd load address
      arm/bootm: enable multi uimage support
      defaultenv: add bootm_opt var to allow the board to pass parameter to bootm

 arch/arm/lib/bootm.c |    5 -----
 commands/bootm.c     |   42 +++++++++++++++++++++++++++++++++++-------
 defaultenv/bin/boot  |    2 +-
 3 files changed, 36 insertions(+), 13 deletions(-)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
