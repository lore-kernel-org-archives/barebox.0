Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pb0-f41.google.com ([209.85.160.41])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VQFjz-000482-4Q
 for barebox@lists.infradead.org; Sun, 29 Sep 2013 12:04:47 +0000
Received: by mail-pb0-f41.google.com with SMTP id rp2so4420530pbb.14
 for <barebox@lists.infradead.org>; Sun, 29 Sep 2013 05:04:21 -0700 (PDT)
From: Yi Qingliang <niqingliang2003@gmail.com>
Date: Sun, 29 Sep 2013 19:57:39 +0800
Message-ID: <5705070.dCeIF7ZgD5@yiqingliang-pc>
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
Subject: strtoull_suffix
To: barebox@lists.infradead.org

the strtoull_suffix can't identify 'g' and 'm', but the 'memparse' in kernel 
can, do we should follow the kernel? 

indeed, i have problem about parsing following kernel parameter: 
nand_parts="512k(bl),512k(env),5m(mk),5m(sk),-(ubifs)

  37         switch (*end) {
  38         case 'G':
  39                 val *= 1024;
  40         case 'M':
  41                 val *= 1024;
  42         case 'k':
  43         case 'K':
  44                 val *= 1024;
  45                 end++;
  46         default:
  47                 break;
  48         }


-- 
Nanjing Jilong
Yi Qingliang
niqingliang2003@gmail.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
