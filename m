Delivery-date: Wed, 17 Dec 2025 12:00:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vVpGY-00CRhs-23
	for lore@lore.pengutronix.de;
	Wed, 17 Dec 2025 12:00:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vVpGX-0000Wo-S0
	for lore@pengutronix.de; Wed, 17 Dec 2025 12:00:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1eyGiGBN+TEto60fuBdadPdP6bDnprrmWsFLg7twS8k=; b=mw2zE5Y095xvAHkPmIWItKGxny
	9ZxXLczJP01hbqBInLcYAFejn5zqV+tNl/bkN7dobjUalAEekCi1pxDx5eUHQ4ImKp7f1Xt56zYyi
	r05+jXnA4TfPwf8znrVCcVIF/GZGVYJBdXtU4J3AfHjXg6wgJgcNdV8ywenNWrnjz4e6U+DQTvjL2
	yBIdcRX76pJ6jLWuRswxmYmewf0p3hEC7imFvuf0a5bp7wt9seCDS1yBmeTMDJd6z+2gHqJGa1tiA
	z7zuq5rwQuYVMpD8o9s5bHqfh7BlI+lxiH7FG7Mx/yHHyx9mmw7XqRQw6LDJuGxfdaJiryqwh99Kg
	bkLdnH4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVpG1-00000006gKu-2wsw;
	Wed, 17 Dec 2025 10:59:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVpFz-00000006gKQ-0TT2
	for barebox@lists.infradead.org;
	Wed, 17 Dec 2025 10:59:48 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vVpFv-0000LE-Ue; Wed, 17 Dec 2025 11:59:44 +0100
Message-ID: <efca75a6-a218-48ee-8471-2e2967e86de5@pengutronix.de>
Date: Wed, 17 Dec 2025 11:59:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
References: <20251217103547.4046898-1-a.fatoum@pengutronix.de>
From: Jonas Rebmann <jre@pengutronix.de>
Content-Language: en-US
In-Reply-To: <20251217103547.4046898-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251217_025947_160936_57ECB4D5 
X-CRM114-Status: GOOD (  25.72  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] scripts: add helper for generating Origin-URL references
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

On 2025-12-17 11:35, Ahmad Fatoum wrote:
> To improve tracking where code originated from, e.g. when porting from
> Linux or U-Boot, some recent commits have started using Origin-URL
> comments. Add a script that can generate them.
> 
> Examples in Vim:
> 
>    # add into highlight URL pointing at specified file
>    V:!git origin-url ../linux/lib/ucs2_string.c
> 
>    # as above, but consult buffer extension for comment style
>    V:!git origin-url ../linux/lib/ucs2_string.c %
> 
>    # generate in snippet syntax
>    V:!git origin-url -s ../linux/lib/ucs2_string.c
> 
> Cc: Jonas Rebmann <jre@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> I've been using this for my recent ports and I think it's generally
> useful and helps with deciding on a common format.
> ---
>   scripts/git-origin-url.sh | 94 +++++++++++++++++++++++++++++++++++++++
>   1 file changed, 94 insertions(+)
>   create mode 100755 scripts/git-origin-url.sh
> 
> diff --git a/scripts/git-origin-url.sh b/scripts/git-origin-url.sh
> new file mode 100755
> index 000000000000..d31008b1b761
> --- /dev/null
> +++ b/scripts/git-origin-url.sh
> @@ -0,0 +1,94 @@
> +#!/usr/bin/env bash
> +# SPDX-License-Identifier: BSD-0-Clause
> +
> +set -euo pipefail
> +
> +declare -A repos=(

Maybe mention that these are the initial commits of the repositories

> +    ["a3ffa97f40dc81f2d6b07ee964f2340fe0c1ba97"]="https://git.pengutronix.de/cgit/barebox"
> +    ["1da177e4c3f41524e886b7f1b8a0c1fc7321cac2"]="https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git"
> +    ["cc8ed39b240180b58810784f844e253263594ac3"]="https://git.busybox.net/busybox"
> +    ["7e492d8258182e31c988bbf9917d4a3d41949d56"]="https://github.com/u-boot/u-boot"

The official upstream for u-boot according to its readme is the gitlab at
https://source.denx.de/u-boot/u-boot

> +    ["afe1be4dbdf142513f6ac1d92e6a20bdc4b20c80"]="https://github.com/systemd/systemd"
> +)
> +
> +err() { echo "error: $* " >&2; exit 1; }
> +usage="Usage: $0 <path-to-file> [destination-file]"

usage="Usage: $0 [-s] <path-to-file> [destination-file]"

> +
> +snippet=""
> +while getopts "sh" opt; do
> +    case "$opt" in
> +        s)
> +            snippet="Snippet-"
> +            ;;
> +        h)
> +            echo "$usage"
> +            exit 0
> +            ;;
> +        *)
> +            err "$usage"
> +            ;;
> +	esac
> +done
> +
> +shift $((OPTIND-1))
> +
> +if [ $# -ne 1 ] && [ $# -ne 2 ]; then
> +    err "$usage"
> +fi
> +
> +# Optional second argument to allow e.g. !git origin-url $remote_file % im vim
> +# In cases where local file has different extension then the original
> +dstbasename="$(basename ${2:-$1})"
> +
> +[ -e "$1" ] || err "File not found"
> +
> +filepath="$(realpath "$1")"
> +
> +repo_root="$(git -C "$(dirname "$filepath")" rev-parse --show-toplevel 2>/dev/null \
> +    || err "Not inside a Git repository: $filepath")"
> +
> +rel_path="$(realpath --relative-to="$repo_root" "$filepath")"
> +
> +# newest commit that touched this file
> +file_commit="$(git -C "$repo_root" log -n1 --format=%H -- "$rel_path")"

So the idea is that the Origin-URL is generated for the commit to which
<path-to-file> is checked out at the time? Maybe you could state that
more clearly e.g. in the top of the script or in the usage message.

We don't want people to add Origin-URLs referencing just any commit.

Once I get to it, I want to add Origin-URLs to some existing code and
reconstructing which exact commit something was originally based on is
the annoying part of that.

> +
> +origin_url=""
> +
> +# find which repo this file ultimately came from
> +for commit in "${!repos[@]}"; do
> +    if git -C "$repo_root" merge-base --is-ancestor "$commit" "$file_commit" 2>/dev/null; then
> +        origin_url="${repos[$commit]}"
> +        break
> +    fi
> +done
> +
> +[ -z "$origin_url" ] && err "No matching repo base found for file commit $file_commit"
> +
> +# output uses the newest file commit, not the origin commit
> +if [[ $origin_url == https://github.com/* ]] ; then
> +    tree_url="$origin_url/blob/$file_commit/$rel_path"
> +else
> +    # assume cgit as fallback
> +    tree_url="$origin_url/tree/$rel_path?id=$file_commit"
> +fi
> +
> +case "${dstbasename##*.}" in
> +    h|S|imxcfg|y|l|lds)
> +        comment_begin='/* '
> +        comment_end=' */'
> +        ;;
> +    c|dts*)
> +        comment_begin='// '
> +        comment_end=''
> +        ;;
> +    *)
> +        comment_begin='# '
> +        comment_end=''
> +        ;;
> +esac
> +
> +comment() { echo "${comment_begin}${*}${comment_end}"; }
> +
> +[ -z "${snippet}" ] || comment "SPDX-SnippetBegin"
> +comment "SPDX-${snippet}Comment: Origin-URL: ${tree_url}"
> +[ -z "${snippet}" ] || comment "SPDX-SnippetEnd"

Regards,
Jonas

-- 
Pengutronix e.K.                           | Jonas Rebmann               |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


