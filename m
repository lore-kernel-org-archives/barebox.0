Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 29.mail-out.ovh.net ([87.98.216.213])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OthhN-0004y4-2D
	for barebox@lists.infradead.org; Thu, 09 Sep 2010 14:01:58 +0000
Date: Thu, 9 Sep 2010 16:01:05 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20100909140105.GG9112@game.jcrosoft.org>
References: <20100909135543.GF9112@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100909135543.GF9112@game.jcrosoft.org>
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
Subject: Re: [PATCH 0/7] Digest and login/password Frameworks
To: barebox@lists.infradead.org

On 15:55 Thu 09 Sep     , Jean-Christophe PLAGNIOL-VILLARD wrote:
> Hi,
> 
> 	this patch serie will introduce the support
> 	of 2 frameworks
> 
> 	Digest Framework
> 
> 	Which allow you to add easely digest algo
> 	with md5, sha1, sha256
> 
> 	Login/Passwd Framework
> 
> 	It will allow you to protect your barebox with a password
> 	and require it via login command or manange it via passwd
> 	This framework use the Digest framework to calculate the checksum
> 	to store the password
The following changes since commit 0d35c3c8a0c2a1f1ff06eac20a12af0186753bc4:

  menu: simplify usage for clients (2010-08-30 21:06:02 +0200)

are available in the git repository at:
  git://git.jcrosoft.org/barebox.git login_passwd

Jean-Christophe PLAGNIOL-VILLARD (7):
      add digest framework
      add md5 support
      add sha1 support
      add sha256 support
      add password framework
      add passwd command
      add login support

 commands/Kconfig   |   28 ++++
 commands/Makefile  |    2 +
 commands/login.c   |   63 +++++++++
 commands/passwd.c  |   98 +++++++++++++
 common/Kconfig     |   28 ++++
 common/Makefile    |    2 +
 common/digest.c    |   77 ++++++++++
 common/password.c  |  286 +++++++++++++++++++++++++++++++++++++
 include/digest.h   |   49 +++++++
 include/password.h |   41 ++++++
 lib/Kconfig        |   17 +++
 lib/Makefile       |    3 +
 lib/md5.c          |  317 +++++++++++++++++++++++++++++++++++++++++
 lib/sha1.c         |  396 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 lib/sha256.c       |  319 ++++++++++++++++++++++++++++++++++++++++++
 15 files changed, 1726 insertions(+), 0 deletions(-)
 create mode 100644 commands/login.c
 create mode 100644 commands/passwd.c
 create mode 100644 common/digest.c
 create mode 100644 common/password.c
 create mode 100644 include/digest.h
 create mode 100644 include/password.h
 create mode 100644 lib/md5.c
 create mode 100644 lib/sha1.c
 create mode 100644 lib/sha256.c

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
