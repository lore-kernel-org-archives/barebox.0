Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x234.google.com ([2a00:1450:4013:c00::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WPRHB-0000sj-Ah
 for barebox@lists.infradead.org; Mon, 17 Mar 2014 06:43:57 +0000
Received: by mail-ee0-f52.google.com with SMTP id e49so3727271eek.11
 for <barebox@lists.infradead.org>; Sun, 16 Mar 2014 23:43:33 -0700 (PDT)
Date: Mon, 17 Mar 2014 07:43:30 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140317064328.GB18901@omega>
References: <loom.20140313T212720-896@post.gmane.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <loom.20140313T212720-896@post.gmane.org>
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
Subject: Re: i.MX21 ADS NAND flash bad blocks scan. Barebox vs Linux
To: Cristiano De Alti <cristiano_dealti@hotmail.com>
Cc: barebox@lists.infradead.org

Hi,

just an idea... don't asking about why. But can you please disable

ARM_OPTIMZED_STRING_FUNCTIONS

and test it again? I will check something there...

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
