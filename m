Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22f.google.com ([2a00:1450:4010:c03::22f])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W1Jl9-0004dt-1e
 for barebox@lists.infradead.org; Thu, 09 Jan 2014 17:51:11 +0000
Received: by mail-la0-f47.google.com with SMTP id eh20so206490lab.6
 for <barebox@lists.infradead.org>; Thu, 09 Jan 2014 09:50:46 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu,  9 Jan 2014 21:58:36 +0400
Message-Id: <1389290319-28518-1-git-send-email-antonynpavlov@gmail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/3] gpiolib: add checks and error message
To: barebox@lists.infradead.org

This patchseries adds additional trivial checks and error message.

[PATCH 1/3] gpiolib: gpio_request(): print message on error
[PATCH 2/3] gpiolib: gpio_free: clear gpio's "label" field too
[PATCH 3/3] gpiolib: gpiolib command: show label only for requested

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
