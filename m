Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([2a01:e0c:1:1599::11])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SVHze-0004l1-9Y
 for barebox@lists.infradead.org; Fri, 18 May 2012 07:52:59 +0000
Date: Fri, 18 May 2012 09:52:50 +0200
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120518095250.7f254617@eb-e6520>
In-Reply-To: <1337326905-555-1-git-send-email-eric@eukrea.com>
References: <1337326905-555-1-git-send-email-eric@eukrea.com>
Mime-Version: 1.0
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
Subject: Re: [PATCH v2 xx/10]
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

in this v2 :
- squashed defconfig in one patch
- squashed init_board updates to use dfu & usbserial in one patch
- added a static inline void eth_register_ethaddr in net.h to solve iim
  compilation when NET is not selected
- moved the patch moving restart_aneg in fec_imx as patch 10/10 : you
  can drop it if you don't want it

Thanks,
Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
