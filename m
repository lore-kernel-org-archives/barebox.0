Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hj523-00032v-NM
 for barebox@lists.infradead.org; Thu, 04 Jul 2019 16:56:28 +0000
Received: by mail-lj1-x232.google.com with SMTP id v18so6734351ljh.6
 for <barebox@lists.infradead.org>; Thu, 04 Jul 2019 09:56:24 -0700 (PDT)
Date: Thu, 4 Jul 2019 19:56:17 +0300
From: Peter Mamonov <pmamonov@gmail.com>
Message-ID: <20190704165617.cvdb34k5mi35jtwa@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: memcmp command is broken
To: andrew.smirnov@gmail.com, barebox@lists.infradead.org

Hi, Andrey,

Current `memcmp` command implementation is broken and fails with the error 
message "read: Bad file number" when calls `read_full(destfd, ...)`. Guess this 
is because `memcpy_parse_options()` opens `destfd` with `O_WRONLY` flag. Anyway 
reverting "ddf4cca339 commands: Introduce memcpy_parse_options()" fixes the 
problem.

Regards,
Peter

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
