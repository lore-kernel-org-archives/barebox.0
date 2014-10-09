Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x235.google.com ([2a00:1450:4010:c03::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XcK1f-0002EZ-2I
 for barebox@lists.infradead.org; Thu, 09 Oct 2014 20:09:27 +0000
Received: by mail-la0-f53.google.com with SMTP id gq15so1991489lab.12
 for <barebox@lists.infradead.org>; Thu, 09 Oct 2014 13:09:03 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 10 Oct 2014 00:08:55 +0400
Message-Id: <1412885337-1544-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 0/2] mips: qemu-malta: add little-endian mode support
To: barebox@lists.infradead.org

Antony Pavlov (2):
  mips: qemu-malta: add little-endian mode support
  Documentation: mips: add little-endian qemu-malta HOWTO

 Documentation/boards/mips/qemu-malta.rst | 24 ++++++++++++++++++++++++
 arch/mips/Kconfig                        |  1 +
 arch/mips/include/asm/gt64120.h          |  7 +++++++
 3 files changed, 32 insertions(+)

-- 
2.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
