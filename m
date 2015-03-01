Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YS339-0004cz-Na
 for barebox@lists.infradead.org; Sun, 01 Mar 2015 12:32:48 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:6f8:1178:4:5054:ff:fe8d:eefb] helo=hardanger.do.blackshift.org)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <mkl@pengutronix.de>) id 1YS32m-0003cY-BF
 for barebox@lists.infradead.org; Sun, 01 Mar 2015 13:32:24 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Sun,  1 Mar 2015 13:32:06 +0100
Message-Id: <1425213143-4529-1-git-send-email-mkl@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 00/17] general cleanups and sandbox OF integration
To: barebox@lists.infradead.org

Hello Sascha,

the first five patches are several cleanups in barebox, I've found while
working on a new feautre. The remaining ones bring OF support to the sandbox so
that enables testing of framworks which need the device tree.

regards,
Marc

changes since v1:
- remove 04/16 "of: make first argument of several of_property_*_string functions const"
- add 05/17, 06/17: to provide no-ops for of_register_fixup, of_find_node_by_alias
- fix 08/17: "sandbox: add support to pass dtb to barebox"
  fix compilation for !CONFIG_OFTREE


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
