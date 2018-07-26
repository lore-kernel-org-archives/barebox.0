Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.mybns.be ([84.199.65.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fighB-00023A-6n
 for barebox@lists.infradead.org; Thu, 26 Jul 2018 13:52:46 +0000
From: Dimitri Van Dyck | IndigoCare <Dimitri.VanDyck@indigocare.com>
Date: Thu, 26 Jul 2018 13:52:32 +0000
Message-ID: <A49D50D39772A245B44D2DDFA61E3E8702088F1D@DCB14.DCBAD.local>
Content-Language: nl-NL
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
Subject: kernel ubi boot
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi,

Is it possible to boot zImage from ubi, and not from raw flash?
If so, from what version is this supported?

barebox@Voipac VMX53:/ boot
booting nand-dtb-ubi

Loading OS UBI image '/dev/ubi0.kernel'
using internal devicetree
no image handler found for image type UBI image

Thanks,
Dimitri 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
