Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QjcnX-0000xu-HR
	for barebox@lists.infradead.org; Wed, 20 Jul 2011 19:51:12 +0000
Received: by wyf23 with SMTP id 23so532221wyf.36
	for <barebox@lists.infradead.org>; Wed, 20 Jul 2011 12:51:07 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 20 Jul 2011 23:51:04 +0400
Message-ID: <CAA4bVAGTD7BQxa-wh=i8iiZX33aQOR3g1O5o7_G6XQkYCgShnw@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
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
Subject: serial_ns16550 driver question
To: barebox <barebox@lists.infradead.org>

Hi!

In include/ns16550.h we have:

struct NS16550_plat {
        unsigned int clock;
        unsigned char f_caps;
        /**
         * register read access capability
         */
        unsigned int (*reg_read) (unsigned long base, unsigned char reg_offset);
        /**
         * register write access capability
         */
        void (*reg_write) (unsigned int val, unsigned long base,
                                    unsigned char reg_offset);
};

Why reg_read and reg_write's argument base has type unsigned long?
IMHO pointer type (void * or char *)  is more natural.

-- 
Best regards,
  Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
