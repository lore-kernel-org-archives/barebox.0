Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OVmB7-0006Tr-JY
	for barebox@lists.infradead.org; Mon, 05 Jul 2010 13:57:46 +0000
From: Luotao Fu <l.fu@pengutronix.de>
Date: Mon,  5 Jul 2010 15:57:36 +0200
Message-Id: <1278338260-29454-1-git-send-email-l.fu@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: reworked multiple environment support
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org

Hi Sascha,

in following is the reworked patch serie of the multiple environment support.
Various fixes were made in single patches. Mainly because the V1 were barely
bisectable and also failed to compile if the multienv support is turned off.

cheers
Luotao Fu


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
