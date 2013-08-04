Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V5tzV-0005l8-B7
 for barebox@lists.infradead.org; Sun, 04 Aug 2013 08:48:42 +0000
Received: by mail-la0-f49.google.com with SMTP id ev20so1360303lab.36
 for <barebox@lists.infradead.org>; Sun, 04 Aug 2013 01:48:14 -0700 (PDT)
Received: from localhost.localdomain ([83.149.9.215])
 by mx.google.com with ESMTPSA id k6sm6829082lae.9.2013.08.04.01.48.12
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
 Sun, 04 Aug 2013 01:48:13 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun,  4 Aug 2013 12:46:00 +0400
Message-Id: <1375605962-4683-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 0/2] resurrect CONFIG_PANIC_HANG option
To: barebox@lists.infradead.org

[PATCH 1/2] resurrect CONFIG_PANIC_HANG option
[PATCH 2/2] CONFIG_PANIC_HANG: replace #ifdef with IS_ENABLED()

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
