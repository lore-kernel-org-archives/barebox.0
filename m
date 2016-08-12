Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x243.google.com ([2a00:1450:400c:c09::243])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bYDVi-0000s7-LY
 for barebox@lists.infradead.org; Fri, 12 Aug 2016 14:32:35 +0000
Received: by mail-wm0-x243.google.com with SMTP id o80so3204036wme.0
 for <barebox@lists.infradead.org>; Fri, 12 Aug 2016 07:32:14 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 12 Aug 2016 17:32:04 +0300
Message-Id: <1471012324-3881-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1471012324-3881-1-git-send-email-antonynpavlov@gmail.com>
References: <1471012324-3881-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 3/3] Documentation: variables: fix error in "code-block"
 directive
To: barebox@lists.infradead.org

The patch fixes this sphinx error:

    barebox/Documentation/user/variables.rst:79: ERROR: Error in "code-block" directive:
    maximum 1 argument(s) allowed, 15 supplied.

    .. code-block:: sh
      barebox@Phytec phyCARD-i.MX27:/ nv dev.nand0.partitions: 4M(barebox),1M(barebox-environment),-(root)
      barebox@Phytec phyCARD-i.MX27:/ devinfo nand0
        Parameters:
        [...]
        partitions: 4M(barebox),1M(barebox-environment),8M(kernel),1011M(root)
        [...]

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 Documentation/user/variables.rst | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/user/variables.rst b/Documentation/user/variables.rst
index 89aadf5..e0a7941 100644
--- a/Documentation/user/variables.rst
+++ b/Documentation/user/variables.rst
@@ -77,6 +77,7 @@ to the corresponding <devname>.<paramname> variable.
 This example changes the partitioning of the nand0 device:
 
 .. code-block:: sh
+
   barebox@Phytec phyCARD-i.MX27:/ nv dev.nand0.partitions: 4M(barebox),1M(barebox-environment),-(root)
   barebox@Phytec phyCARD-i.MX27:/ devinfo nand0
     Parameters:
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
