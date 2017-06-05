Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x22f.google.com ([2a00:1450:400c:c09::22f])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dHvdq-0004EW-8n
 for barebox@lists.infradead.org; Mon, 05 Jun 2017 17:18:12 +0000
Received: by mail-wm0-x22f.google.com with SMTP id 7so78562901wmo.1
 for <barebox@lists.infradead.org>; Mon, 05 Jun 2017 10:17:49 -0700 (PDT)
MIME-Version: 1.0
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Mon, 5 Jun 2017 19:17:27 +0200
Message-ID: <CAAP7ucJ9m2SvZ29nNbQF7HRKcGSQ0O_RVFKF63Xv79CCR=uA_g@mail.gmail.com>
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
Subject: RFC: barebox RATP C library?
To: barebox@lists.infradead.org

Hey,

I've been playing a bit with the possibility of having a C library to
talk RATP with barebox, totally equivalent to what bbremote does in
python, but as a general C lib with a stable API that may be
integrated in other C/C++ applications.

From my POV I see two options to try:
   a) build a library based on lib/ratp.c and common/ratp.c but
without directly sharing the source code; i.e. just take bits and
pieces from those implementations where necessary, and write the
library as any other userspace library.
   b) build a small library that allows including lib/ratp.c (and
maybe common/ratp.c) directly in the build, but which would require
those files to be updated in a way that allow being shared by a
separate library that isn't running in the whole barebox runtime
context.

I'm not sure if anyone has thoughts on this; I initially thought b)
would be definitely the way to go, but the current implementation
seems too tied to the actual barebox runtime, so maybe it's just
easier to setup a) and just share e.g. the barebox RATP message format
structs, enums and so on.

Comments, suggestions?

-- 
Aleksander
https://aleksander.es

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
