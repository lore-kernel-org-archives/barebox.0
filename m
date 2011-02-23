Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([212.27.42.3])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PsLQD-0005HE-HY
	for barebox@lists.infradead.org; Wed, 23 Feb 2011 20:34:54 +0000
Received: from [192.168.2.15] (unknown [82.233.81.124])
	by smtp3-g21.free.fr (Postfix) with ESMTP id 7C45FA61C9
	for <barebox@lists.infradead.org>; Wed, 23 Feb 2011 21:34:47 +0100 (CET)
Message-ID: <4D656F66.8030501@eukrea.com>
Date: Wed, 23 Feb 2011 21:34:46 +0100
From: Eric Benard <eric@eukrea.com>
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
Subject: i.MX51 & MMU
To: barebox@lists.infradead.org

Hi,

has anyone recently tested barebox master on a babbage board with MMU enabled 
? Here (not on a babbage, with a TO2 i.MX515 with 1 bank of DDR2), enabling 
MMU crash the board (which works fine with barebox with MMU disabled and with 
Linux 2.6.38-rc6 so the hardware seems not to be the root of the problem).

Thanks,
Eric


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
