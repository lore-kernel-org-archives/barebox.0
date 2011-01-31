Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qy0-f170.google.com ([209.85.216.170])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pjol9-0004qF-Po
	for barebox@lists.infradead.org; Mon, 31 Jan 2011 08:05:19 +0000
Received: by qyk10 with SMTP id 10so3307855qyk.15
	for <barebox@lists.infradead.org>; Mon, 31 Jan 2011 00:05:14 -0800 (PST)
MIME-Version: 1.0
Date: Mon, 31 Jan 2011 03:05:13 -0500
Message-ID: <AANLkTimL_AGd7_fC0h3Ae5e8YMR8N9v-K3qJujGqz4Fu@mail.gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
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
Subject: master compile error
To: barebox@lists.infradead.org

Hi,

trying to compile current barebox
(a45c3b961c7696e2f203f3fd981db78d92b747e6) from master branch and get
following error (gcc 4.5.1):
LD      barebox
common/built-in.o: In function `image_get_data':
/home/open-nandra/Downloads/barebox/include/image.h:280: undefined
reference to `__bswapsi2'
common/built-in.o: In function `image_multi_getimg':
/home/open-nandra/Downloads/barebox/common/image.c:213: undefined
reference to `__bswapsi2'
common/built-in.o: In function `image_print_contents':
/home/open-nandra/Downloads/barebox/common/image.c:279: undefined
reference to `__bswapsi2'
/home/open-nandra/Downloads/barebox/common/image.c:284: undefined
reference to `__bswapsi2'
/home/open-nandra/Downloads/barebox/common/image.c:285: undefined
reference to `__bswapsi2'
common/built-in.o:/home/open-nandra/Downloads/barebox/common/image.c:286:
more undefined references to `__bswapsi2' follow
make: *** [barebox] Error 1

I found this patch
(http://lists.infradead.org/pipermail/barebox/2011-January/002693.html)
but seems it's missing in master branch.

Thanks,

marek
-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
icq: 290551086
web: http://open-nandra.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
