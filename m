Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mailgate.pixel-group.de ([145.253.133.146])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gH8Vn-0006eC-Uz
 for barebox@lists.infradead.org; Mon, 29 Oct 2018 14:27:36 +0000
Received: from mail.pixel.de (unknown [10.63.25.81])
 by mailgate.pixel-group.de (Postfix) with ESMTP id C7B685E0F6
 for <barebox@lists.infradead.org>; Mon, 29 Oct 2018 15:27:06 +0100 (CET)
Received: from tragicomix (localhost [127.0.0.1])
 by mail.pixel.de (Postfix) with ESMTP id 7181F1A1A4
 for <barebox@lists.infradead.org>; Mon, 29 Oct 2018 15:27:06 +0100 (CET)
From: Kai Che <Kai.Che@mixed-mode.de>
Date: Mon, 29 Oct 2018 14:27:06 +0000
Message-ID: <1540823231090.67191@mixed-mode.de>
Content-Language: de-DE
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
Subject: issues loading a FIT image with bootm
To: Barebox List <barebox@lists.infradead.org>

Hi all,

I'm trying to load a FIT image (image.itb) with the bootm command, but I'm getting the following issue:

barebox@RaspberryPi 3 Model B:/ bootm
Loading open firmware Device Tree flattened Binary '/mnt/disk0.3/image.itb'
no image handler found for image type open firmware Device Tree flattened Binary
handler failed with: No such device

The generated .itb file is created with mkimage -f from u-boot and according to the patches, the FIT image format should be supported:

http://lists.infradead.org/pipermail/barebox/2015-March/022876.html

Does anyone have experience with loading and verifying FIT images with bootm and could give me some suggestions on what would I need to check further in order to identify and fix the issue? 

Thanks,
Kai
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
