Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ob0-x229.google.com ([2607:f8b0:4003:c01::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VoOZP-0007O9-7z
 for barebox@lists.infradead.org; Thu, 05 Dec 2013 02:21:39 +0000
Received: by mail-ob0-f169.google.com with SMTP id wm4so17337198obc.0
 for <barebox@lists.infradead.org>; Wed, 04 Dec 2013 18:21:18 -0800 (PST)
Received: from clean ([192.241.72.90])
 by mx.google.com with ESMTPSA id bp6sm5948259oec.7.2013.12.04.18.21.15
 for <barebox@lists.infradead.org>
 (version=TLSv1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 04 Dec 2013 18:21:17 -0800 (PST)
From: "Kevin Du Huanpeng" <u74147@gmail.com>
Date: Thu, 5 Dec 2013 10:21:03 +0800
Message-ID: <000901cef160$a9c88bd0$fd59a370$@gmail.com>
MIME-Version: 1.0
Content-Language: zh-cn
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
Subject: [.gitignore] please add generated file to .gitignore 
To: barebox@lists.infradead.org

Hi, is anyone know the these two files used for:
	scripts/fix_size
	scripts/kernel-install
it seem generated and it's a binary executable file , if so please add it to
.gitignore
1. git clone ....
2. set ARCH & CROSS_COMPILE
3.  make qemu-malta_defconfig
4. make 
5. git status
dev@bogon:~/barebox$ git status
# On branch master
# Untracked files:
#   (use "git add <file>..." to include in what will be committed)
#
#       scripts/fix_size
#       scripts/kernel-install


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
