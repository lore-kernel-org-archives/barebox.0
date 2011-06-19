Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QYKi4-0004I7-62
	for barebox@lists.infradead.org; Sun, 19 Jun 2011 16:18:52 +0000
Received: by wyf23 with SMTP id 23so2299119wyf.36
	for <barebox@lists.infradead.org>; Sun, 19 Jun 2011 09:18:48 -0700 (PDT)
From: Carlo Caione <carlo.caione@gmail.com>
Date: Sun, 19 Jun 2011 18:18:44 +0200
Message-Id: <91BC1EFE-8DED-47F9-9027-DA5140A1A73E@gmail.com>
Mime-Version: 1.0 (Apple Message framework v1084)
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: shift and clocksource
To: barebox@lists.infradead.org

Hi,
I was looking in the sources for time keeping. Why the shift field of the clocksource structure is always set to 10?
Also using the clocks_calc_mult_shift() in kernel sources I obtain different values for the shift variable.

Best regards,

--
Carlo Caione

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
