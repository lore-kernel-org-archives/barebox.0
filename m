Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x231.google.com ([2607:f8b0:400e:c00::231])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dsgSQ-0006e8-74
 for barebox@lists.infradead.org; Fri, 15 Sep 2017 02:34:20 +0000
Received: by mail-pf0-x231.google.com with SMTP id p87so682911pfj.9
 for <barebox@lists.infradead.org>; Thu, 14 Sep 2017 19:33:57 -0700 (PDT)
Received: from ubuntu ([218.6.242.42])
 by smtp.gmail.com with ESMTPSA id q73sm32402046pfl.147.2017.09.14.19.33.56
 for <barebox@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 14 Sep 2017 19:33:56 -0700 (PDT)
From: zjh <jianhuizhao.329@gmail.com>
Date: Fri, 15 Sep 2017 10:33:53 +0800
Message-ID: <20170915023353.GA6298@ubuntu>
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
Subject: Load environment variables earlier
To: barebox@lists.infradead.org

 think the environment variables should be loaded before the device is registered,
 so when the device is registered, it can be initialized according to the environment variable.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
