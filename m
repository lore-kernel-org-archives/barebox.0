Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x233.google.com ([2a00:1450:4010:c03::233])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UrCBD-0002KL-L0
 for barebox@lists.infradead.org; Mon, 24 Jun 2013 19:12:01 +0000
Received: by mail-la0-f51.google.com with SMTP id fq12so10836132lab.38
 for <barebox@lists.infradead.org>; Mon, 24 Jun 2013 12:11:36 -0700 (PDT)
Received: from localhost.localdomain
 (broadband-95-84-154-9.nationalcablenetworks.ru. [95.84.154.9])
 by mx.google.com with ESMTPSA id ea14sm7217694lbb.11.2013.06.24.12.11.34
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
 Mon, 24 Jun 2013 12:11:35 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 24 Jun 2013 23:10:09 +0400
Message-Id: <1372101012-11666-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 0/3] MIPS: pbl: add nmon MIPS nano-monitor
To: barebox@lists.infradead.org

nmon is a tiny monitor (<1200 bytes) program
for the MIPS processors.
It can operate with NO working RAM at all!
It uses only the processor registers and NS16550-compatible
UART port for operation, so it can be used for a memory
controller setup code debugging.

With no changes nmon should work on different MIPS
processors as it uses only common MIPS-I instructions.

[PATCH 1/3] MIPS: pbl: add nmon MIPS nano-monitor
[PATCH 2/3] MIPS: qemu-malta: rework debug_ll.h
[PATCH 3/3] MIPS: qemu-malta: add nmon

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
