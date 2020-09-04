Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kEB9l-0008Ms-9k
 for barebox@lists.infradead.org; Fri, 04 Sep 2020 12:49:29 +0000
Received: by mail-pl1-x641.google.com with SMTP id k13so1090019plk.13
 for <barebox@lists.infradead.org>; Fri, 04 Sep 2020 05:49:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200904101040.19043-1-hubert.feurstein@vahle.at>
In-Reply-To: <20200904101040.19043-1-hubert.feurstein@vahle.at>
From: Hubert Feurstein <h.feurstein@gmail.com>
Date: Fri, 4 Sep 2020 14:49:15 +0200
Message-ID: <CAFfN3gXFSC8AzwM2FdUb7kOr_Qp_scAxzWu47MkAEhBp4ePdrw@mail.gmail.com>
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
Subject: Re: [PATCH] imd: imd_calculate_crc32: initialize imd_crc to NULL
To: barebox@lists.infradead.org

Am Fr., 4. Sept. 2020 um 12:10 Uhr schrieb Hubert Feurstein
<h.feurstein@gmail.com>:
> This fixes a NULL pointer dereference in the caller when imd-crc-token is
> not found.
In fact, it is even worse, it is a "uninitialized pointer dereference".

Regards
Hubert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
