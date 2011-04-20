Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from coyote.quickmin.net ([217.14.112.24])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1QCV5g-0006vz-0A
	for barebox@lists.infradead.org; Wed, 20 Apr 2011 10:57:00 +0000
Received: from [10.96.97.181] (tmayer.mit.telemotive.de [10.96.97.181])
	by alderan.mit.telemotive.de (Postfix) with ESMTP id 0AEC9F77DF
	for <barebox@lists.infradead.org>;
	Wed, 20 Apr 2011 12:56:52 +0200 (CEST)
From: Thomas Mayer <thomas.mayer@telemotive.de>
MIME-Version: 1.0
Message-ID: <4DAEBBF4.30805@telemotive.de>
Date: Wed, 20 Apr 2011 12:56:52 +0200
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
Subject: i.MX35 3-stack use only 128MB RAM
To: barebox@lists.infradead.org

Hi,

I read in the freescale documentation "U-Boot for i.MX35 based Designs" 
that the i.MX35 3-stack board has 256MB SDRAM, but we can use only 128MB 
because the second chip select isn't configured. Depending on the 
circuit diagrams I think "CSD1" isn't configured.
I looked already in the datasheet of the cpu, but I couldn't found a 
solution for this problem.

Have anybody ever tried to enable this second chip select?


Regards,
Thomas

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
