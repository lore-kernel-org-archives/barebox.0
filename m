Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-eopbgr20045.outbound.protection.outlook.com ([40.107.2.45]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gwnEd-0000pJ-WA
 for barebox@lists.infradead.org; Thu, 21 Feb 2019 12:13:53 +0000
From: =?iso-8859-1?Q?Thomas_H=E4mmerle?= <Thomas.Haemmerle@wolfvision.net>
Date: Thu, 21 Feb 2019 12:13:45 +0000
Message-ID: <1550751215-25530-1-git-send-email-thomas.haemmerle@wolfvision.net>
Content-Language: en-US
MIME-Version: 1.0
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
Subject: [PATCH v2] firmware-zynqmp: port from linux
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Cc: =?iso-8859-1?Q?Thomas_H=E4mmerle?= <Thomas.Haemmerle@wolfvision.net>

From: Thomas Haemmerle <thomas.haemmerle@wolfvision.net>

Changes since v1:
- return -EIO (instead of -1) if API version or trustzone version are 
  earlier than v1.0 in probe function

Thomas Haemmerle (1):
  firmware-zynqmp: port from linux

 arch/arm/Kconfig                                   |   1 +
 arch/arm/mach-zynqmp/Makefile                      |   2 +-
 arch/arm/mach-zynqmp/firmware-zynqmp.c             | 601 +++++++++++++++++++++
 .../arm/mach-zynqmp/include/mach/firmware-zynqmp.h |  66 +++
 4 files changed, 669 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/mach-zynqmp/firmware-zynqmp.c
 create mode 100644 arch/arm/mach-zynqmp/include/mach/firmware-zynqmp.h

-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
