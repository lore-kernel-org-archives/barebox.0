Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA8F7-0004jk-20
 for barebox@lists.infradead.org; Tue, 17 Sep 2019 07:49:46 +0000
Date: Tue, 17 Sep 2019 09:49:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190917074940.fv6grmxieroachnl@pengutronix.de>
References: <20190916183816.20300-1-a.fatoum@pengutronix.de>
 <f8e5f85c-2973-0c8a-080e-33a5254183b4@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f8e5f85c-2973-0c8a-080e-33a5254183b4@pengutronix.de>
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
Subject: Re: [PATCH] libfile: null-terminate buffer as expected
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Sep 16, 2019 at 08:48:13PM +0200, Ahmad Fatoum wrote:
> On 9/16/19 8:38 PM, Ahmad Fatoum wrote:
> > strim calls strlen on buf internally which is undefined because buf
> > is not null-terminated. Fix this.
> 
> Please dismiss... read_file_2 has its buffer allocated with calloc,
> thus nothing to see here...

except this:

---------------------------8<-------------------------------

From b3692899dd20e85368aea114f0984cf204f24356 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 17 Sep 2019 09:46:46 +0200
Subject: [PATCH] libfile: Document that read_file() returns a terminated
 buffer

read_file() and read_file_2() return a '\0' terminated buffer to make
sure the buffer is usable as a string. Other code like read_file_line()
depends on this behaviour, so document it explicitly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/libfile.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/lib/libfile.c b/lib/libfile.c
index 172602377f..648d409a01 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -158,7 +158,9 @@ EXPORT_SYMBOL_GPL(read_file_line);
  * bytes are read. The actual read size is returned in @size. -EFBIG is
  * returned if the file is bigger than @max_size, but the buffer is read
  * anyway up to @max_size in this case. Free the buffer with free() after
- * usage.
+ * usage. The allocated buffer is actually one byte bigger than the file
+ * and the extra byte is initialized to '\0' so that the returned buffer
+ * can safely be interpreted as a string.
  *
  * Return: 0 for success, or negative error code. -EFBIG is returned
  * when the file has been bigger than max_size.
-- 
2.23.0

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
