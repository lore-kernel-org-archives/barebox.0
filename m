Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.data-modul.de ([212.184.205.171]
 helo=mailgw1.data-modul.com)
 by bombadil.infradead.org with smtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XU8o6-0004GC-UG
 for barebox@lists.infradead.org; Wed, 17 Sep 2014 06:33:39 +0000
From: Silvio Fricke <silvio.fricke@gmail.com>
Date: Wed, 17 Sep 2014 08:32:59 +0200
Message-Id: <cover.1410935206.git.silvio.fricke@gmail.com>
In-Reply-To: <0d3183ff039cb1eccb72299690544cb34299bf4e.1410868272.git.silvio.fricke@gmail.com>
References: <0d3183ff039cb1eccb72299690544cb34299bf4e.1410868272.git.silvio.fricke@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] gpio phy-reset problem
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Silvio Fricke <silvio.fricke@gmail.com>

Hi,

okay - I have found the problem: Silvio - know YOUR BOARDS code! :-)
Sasha: Please ignore the first patch, and add this to your repo.

Thx,
Silvio


Silvio Fricke (1):
  ARM: i.MX: edmqmx6: free phy-reset gpio pin

 arch/arm/boards/datamodul-edm-qmx6/board.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
