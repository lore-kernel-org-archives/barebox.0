Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-db3on0121.outbound.protection.outlook.com
 ([157.55.234.121] helo=emea01-db3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YYGpx-00049p-5e
 for barebox@lists.infradead.org; Wed, 18 Mar 2015 16:28:53 +0000
From: "Gabor Janak (g.janak@agilion.de)" <g.janak@agilion.de>
Date: Wed, 18 Mar 2015 16:28:26 +0000
Message-ID: <DB3PR03MB0826E47A0EE5FF439BDD67B698000@DB3PR03MB0826.eurprd03.prod.outlook.com>
Content-Language: de-DE
MIME-Version: 1.0
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
Subject: Is this a barebox bootm memory release Bug ?
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi,

I have one little question.
In [barebox.git] / common / bootm.c Line 201

196        if (data->verify) {
197                 ret = uimage_verify(data->os);
198                 if (ret) {
199                         printf("Checking data crc failed with %s\n",
200                                         strerror(-ret));
201                         uimage_close(data->os);
202                         return ret;
203                 }
204         }

The uimage is closed but data->os is not set to NULL.

If this function is called from  bootm_boot in
472                 ret = handler->bootm(data);

and
482         if (data->os)
483                 uimage_close(data->os);

will crash free something ....
Will end in a possible
unable to handle paging request at address 0xfe148f0e

Is this a correct analyze ?
If yes, it's enough to add an data->os=NULL after uimage_close ?

I would ask this here before submitting a patch.

In best regards
Gabor Janak



[Hannover Messe]<http://www.hannovermesse.de/aussteller/agilion/H465093?source=dl_ban>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
