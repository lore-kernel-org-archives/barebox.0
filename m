Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22e.google.com ([2a00:1450:4013:c00::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Upy2X-0005gi-Ds
 for barebox@lists.infradead.org; Fri, 21 Jun 2013 09:53:58 +0000
Received: by mail-ee0-f46.google.com with SMTP id d41so4376526eek.19
 for <barebox@lists.infradead.org>; Fri, 21 Jun 2013 02:53:33 -0700 (PDT)
Received: from [127.0.0.1] (fritzc.com. [78.47.220.26])
 by mx.google.com with ESMTPSA id b3sm6481686eev.10.2013.06.21.02.53.31
 for <barebox@lists.infradead.org>
 (version=SSLv3 cipher=RC4-SHA bits=128/128);
 Fri, 21 Jun 2013 02:53:32 -0700 (PDT)
From: Christoph Fritz <chf.fritz@googlemail.com>
Date: Fri, 21 Jun 2013 11:53:30 +0200
Message-ID: <1371808410.3949.13.camel@mars>
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
Subject: [PATCH 0/2] OMAP: Boot from UBI
To: barebox@lists.infradead.org

This small set of patches adds boot from UBI support on OMAP SoCs:
MLO attaches UBI, loads barebox from within a static volume and
goes up from there.
The benefit: NAND wearleveling is also done for barebox.

A NAND layout can now look like this:

       +------------+-->0x00000000-> xload start   (MLO copy on 1st block)
       |            |
       |            |-->0x0001FFFF-> xload end
       |            |-->0x00020000-> xload1 start   (MLO backup copy on 2rd)
       |            |
       |            |-->0x0003FFFF-> xload1 end
       |            |-->0x00040000-> xload2 start   (MLO backup copy on 3rd)
       |            |
       |            |-->0x0005FFFF-> xload2 end
       |            |-->0x00060000-> xload3 start   (MLO backup copy on 4rd)
       |            |
       |            |-->0x0007FFFF-> xload3 end
       |            |-->0x00080000-> ubi start
       |            |
       |            |
       |            |     UBI-Volumes:
       |            |           - barebox_0 [1M]
       |            |           - bareboxenv_0 [512k]
       |            |           - kernel_0 [6M]
       |            |           - oftree_0 [512k]
       |            |           - bmp_0 [2M]
       |            |           - root [-]
       |            |
       |            |
       +------------+-->0x0FFFFFFF-> root end

Next step (ToDo) is to decrease boot-time because it takes nearly
six secounds to get to a fully featured barebox-prompt. Possible
solutions are:

 - use UBI Fastmap to decrease scan time
 - only scan UBI once and transfer gained data to next boot stage:
   MLO (scans UBI) -> Barebox (gets data) -> Kernel (gets data)

---
Christoph Fritz (2):
  ARM OMAP: MLO: add support for loading Barebox from UBI
  ARM OMAP: add support for loading Environment from UBI

 arch/arm/mach-omap/Kconfig |   44 +++++++++++++++++++++++++
 arch/arm/mach-omap/xload.c |   76 ++++++++++++++++++++++++++++++++++++++++++--
 common/Kconfig             |   34 ++++++++++++++++++++
 common/startup.c           |   17 ++++++++++
 4 files changed, 169 insertions(+), 2 deletions(-)

-- 
1.7.10.4



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
