Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f170.google.com ([209.85.217.170])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U11m8-0006Cq-Iz
 for barebox@lists.infradead.org; Thu, 31 Jan 2013 21:34:29 +0000
Received: by mail-lb0-f170.google.com with SMTP id ge1so3897965lbb.29
 for <barebox@lists.infradead.org>; Thu, 31 Jan 2013 13:34:25 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri,  1 Feb 2013 01:46:31 +0400
Message-Id: <1359668796-22835-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 0/5] gpiolib: add gpio_request_{in,out}put support
To: barebox@lists.infradead.org

v2:
 - add error messages to comply with requirements of Jean-Christophe

[PATCH v2 1/5] gpiolib: fix whitespaces
[PATCH v2 2/5] gpiolib: add gpio_request_{in,out}put support
[PATCH v2 3/5] gpiolib: gpio_request(): add error message
[PATCH v2 4/5] at91sam9*: use gpio_request_output()
[PATCH v2 5/5] animeo_ip: use gpio_request_input()

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
