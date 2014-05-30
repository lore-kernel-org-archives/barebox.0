Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x230.google.com ([2a00:1450:400c:c05::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WqIwg-0004ph-4I
 for barebox@lists.infradead.org; Fri, 30 May 2014 09:17:50 +0000
Received: by mail-wi0-f176.google.com with SMTP id n15so710581wiw.15
 for <barebox@lists.infradead.org>; Fri, 30 May 2014 02:17:24 -0700 (PDT)
Date: Fri, 30 May 2014 11:17:19 +0200
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140530091716.GA13550@omega>
References: <1401440856-6145-1-git-send-email-holgerschurig@gmail.com>
 <1401440856-6145-10-git-send-email-holgerschurig@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1401440856-6145-10-git-send-email-holgerschurig@gmail.com>
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
Subject: Re: [PATCH 09/10] beautify PHY driver names
To: Holger Schurig <holgerschurig@gmail.com>
Cc: barebox@lists.infradead.org

Hi,

On Fri, May 30, 2014 at 11:07:35AM +0200, Holger Schurig wrote:
> Some device names where texts like "Atheros 8035 ethernet" or similar. They
> now got a prefix "phy-" and just their name and look now much more like the
> other driver names.
>

these names are taken from linux kernel code to have a similar name
convention like linux in barebox.

I would leave the names like linux. Maybe you get a name prefix into the
linux kernel, then we should change it in barebox also.

If you want to try that I wish you good luck. :-)

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
