Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f46.google.com ([209.85.214.46])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U2Kgf-0000Gq-GH
 for barebox@lists.infradead.org; Mon, 04 Feb 2013 11:58:14 +0000
Received: by mail-bk0-f46.google.com with SMTP id j5so2704915bkw.5
 for <barebox@lists.infradead.org>; Mon, 04 Feb 2013 03:58:11 -0800 (PST)
Date: Mon, 4 Feb 2013 12:58:58 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20130204115856.GB3366@x61s.8.8.8.8>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: the different between getopt and getopts
To: barebox@lists.infradead.org

Hi,

barebox has a builtin "getopt" hush implementation. But this "getopt"
implementation used a syntax which is more like "getopts".

"getopt" and "getopts" do the same thing in different syntax. See:

http://aplawrence.com/Unix/getopts.html

In my opinion we should rename "getopt" to "getopts". I can make a patch for
this, but I don't know if there is a special reason why in barebox
"getopts" is "getopt".

Regards Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
