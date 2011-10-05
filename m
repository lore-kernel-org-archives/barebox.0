Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og101.obsmtp.com ([64.18.0.141])
	by canuck.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RBSqD-0001e0-1X
	for barebox@lists.infradead.org; Wed, 05 Oct 2011 14:53:04 +0000
Received: from corgarff.edi.gefes.com (corgarff.edi.gefes.com [3.26.68.194])
	by doyen.ramix-uk.cho.ge.com (Postfix) with ESMTP id 9EB22C8083
	for <barebox@lists.infradead.org>; Wed,  5 Oct 2011 15:52:45 +0100 (BST)
Message-ID: <4E8C6F3D.40308@ge.com>
Date: Wed, 05 Oct 2011 15:52:45 +0100
From: Renaud Barbier <renaud.barbier@ge.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: bootm
To: barebox@lists.infradead.org

Hello,
I am looking for information on how to boot Linux with a device tree.

Basically, I have a  uImage and a device tree(dtb) and with U-boot I 
used to do:
bootm uImage_address -- dtb_address

How does it work with barebox?

Cheers,
Renaud

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
