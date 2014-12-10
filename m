Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.orpheo.org ([176.31.189.100] helo=orpheo.org)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Xyk1M-0006ss-Hp
 for barebox@lists.infradead.org; Wed, 10 Dec 2014 16:21:49 +0000
Received: from [192.168.1.40] (dra38-6-88-164-121-33.fbx.proxad.net
 [88.164.121.33]) by orpheo.org (Postfix) with ESMTPSA id AD6C91121C04
 for <barebox@lists.infradead.org>; Wed, 10 Dec 2014 17:21:18 +0100 (CET)
Message-ID: <548872F5.6090704@ophrys.net>
Date: Wed, 10 Dec 2014 17:21:09 +0100
From: Victorien Vedrine <victorien.vedrine@ophrys.net>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Logical partition on barebox
To: barebox@lists.infradead.org

Hi,
I'm developping a board with barebox and Linux. For my application, I 
need 5 partition on my SD card (3 primary and 2 logical).
On barebox prompt, I just see the 3 primary partitions (/dev/disk0.0, 
/dev/disk0.1, /dev/disk0.2) and 1 extended partition (/dev/disk0.3). Is 
there a way to see the 2 logical partitions ?

Best regards

Victorien

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
